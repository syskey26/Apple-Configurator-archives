var APP_VERSION = "1"; /*! built 2015-07-08 */
define("shared/locale/model", [], function() {
    return Em.Object.extend({
        isoCodes: [],
        isoName: "",
        name: "",
        folder: "",
        isoCode: function() {
            return this.get("isoCodes")[0]
        }.property("isoCodes"),
        strings: function() {
            var a = this.get("isoCode"), b = App.TRANSLATIONS, c = b[a];
            return c || (c = b[a.substr(0, 2)]), c || (console.warn("Could not find translations for %@ - %@".fmt(this.get("isoCode"), this.get("name"))), c = b.en), c
        }.property("isoCodes"),
        noWordBoundaries: function() {
            return !!this.get("strings").$NO_WORD_BREAKS$
        }.property("strings"),
        fields: function() {
            var a = new Em.Set(this.get("isoCodes"));
            return a.add(this.get("isoName")), a.add(this.get("name")), a.add(this.get("folder")), a
        }.property(),
        matches: function(a) {
            return this.get("fields").contains(a)
        }
    })
}), define("shared/browser", [], function() {
    var a = "unknown", b = Em.Object.extend({
        isInHelpViewer: "HelpViewer"in window,
        isInModernHelpViewer: "HelpViewer"in window && "showTOCButton"in window.HelpViewer,
        isInOldHelpViewer: "HelpViewer"in window&&!("showTOCButton"in window.HelpViewer),
        name: function() {
            var b = Em.get(window, "iTunes.platform");
            return b ? "itunes-%@".fmt(b.toLowerCase()) : (b = a, $.each([/chrome/i, /safari/i, /opera/i, /webkit/i, /firefox/i, /msie/i], function() {
                var a = navigator.userAgent.match(this);
                return a ? (b = a[0].toLowerCase(), !1) : void 0
            }), b)
        }.property(),
        version: function() {
            var b = Em.get(window, "iTunes.version");
            return b ? b : (b = a, $.each([/Version\/([_\.\d]+)/, /Chrome\/([_\.\d]+)/, /WebKit\/([_\.\d]+)/, /MSIE ([_\.\d]+)/, /Firefox\/([_\.\d]+)/], function() {
                var a = navigator.userAgent.match(this);
                return a ? (b = a[0].replace(this, "$1").replace(/_/g, "."), !1) : void 0
            }), b)
        }.property(),
        os: function() {
            var b = a;
            return $.each([/Mac OS X ([_\.\d]+)/, /iPhone OS ([_\.\d]+)/, /CPU OS ([_\.\d]+)/, /Windows NT ([_\.\d]+)/], function() {
                var a = navigator.userAgent.match(this);
                return a ? (b = a[0].replace(this, "$1").replace(/_/g, "."), !1) : void 0
            }), b
        }.property(),
        isMobile: function() {
            return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)
        }.property(),
        params: function() {
            var a = {};
            return location.search && $.each(location.search.substring(1).split("&"), function() {
                var b = this.split("=");
                a[decodeURIComponent(b[0])] = decodeURIComponent(b[1])
            }), a
        }.property(),
        classNames: function() {
            var b = [], c = "is-" + this.get("name").replace("firefox", "ff").replace("msie", "ie"), d = this.get("version");
            if (b.push(c), c.match(/itunes/) && b.push("is-webkit"), navigator.userAgent.match(/AppleWebKit\/(534|536)/) && b.push("is-safari6", "is-applewebkit-534"), d !== a) {
                var e = c + this.get("version").split(".")[0];
                b.push(e)
            }
            return this.get("isInHelpViewer") ? (b.push("is-hv"), b.push(this.isInModernHelpViewer ? "is-modern-hv" : "is-older-hv")) : b.push("is-not-hv"), b.push( - 1 !== navigator.appVersion.indexOf("Mac") ? "is-mac-os" : "is-not-mac-os"), b.push("ontouchstart"in document.documentElement ? "is-touch" : "is-not-touch"), b.join(" ")
        }.property(),
        queryLocale: function() {
            return this.get("params.lang")
        }.property(),
        currentLocale: function() {
            return navigator.browserLanguage || navigator.systemLanguage || navigator.userLanguage || navigator.language
        }.property(),
        locales: function() {
            var a = [];
            if ("HelpViewer"in window && "preferredLanguages"in HelpViewer)
                try {
                    var b = Array.prototype.concat.apply([], HelpViewer.preferredLanguages());
                    a = b.concat(a)
            } catch (c) {}
            if ("iTunes"in window)
                try {
                    a = $.map(iTunes.acceptedLanguages.split(","), function(a) {
                        return a.replace(/\+?([^;]+);.*/, "$1")
                    }).concat(a)
            } catch (c) {}
            var d = [this.get("queryLocale"), this.get("currentLocale")].concat(a);
            return $.map(d, function(a) {
                return a ? (a = a.toLowerCase(), a.length <= 2 ? a : [a, a.substr(0, 2)]) : null
            })
        }.property(),
        has3dTransformSupport: null,
        _has3dTransform: function() {
            var a, b = document.createElement("p"), c = {
                webkitTransform: "-webkit-transform",
                OTransform: "-o-transform",
                msTransform: "-ms-transform",
                MozTransform: "-moz-transform",
                transform: "transform"
            };
            document.body.insertBefore(b, null);
            for (var d in c)
                void 0 !== b.style[d] && (b.style[d] = "translate3d(1px,1px,1px)", a = window.getComputedStyle(b).getPropertyValue(c[d]));
            return document.body.removeChild(b), void 0 !== a && a.length > 0 && "none" !== a
        },
        has3dTransform: function() {
            return null === this.has3dTransformSupport && (this.has3dTransformSupport = this._has3dTransform()), this.has3dTransformSupport
        }
    });
    return b.create()
}), define("shared/bundle", ["shared/locale/model", "shared/browser"], function(a, b) {
    function c(a) {
        var b = /[a-z]{2}(_[a-z]*)?(_[a-z]{2})?\.lproj/gi.exec(a) || [];
        return b[0]
    }
    var d = Em.RSVP.Promise, e = "locale-list.json", f = "locale-info.json";
    return Em.Object.extend({
        locales: null,
        currentLocale: null,
        init: function() {
            d.cast($.getJSON(e)).then(null, function() {
                var a = Em.get("window.HelpViewer.localeList");
                return a ? d.resolve(JSON.parse(a())) : d.reject()
            }).then(null, function() {
                var a = c(b.get("params.localePath"));
                return a ? d.cast($.getJSON("%@/%@".fmt(a, f))).then(function(b) {
                    var c = Em.merge(b.meta || b, {
                        folder: a
                    });
                    return d.resolve([c])
                }, d.reject) : d.reject()
            }).then(null, function() {
                return d.resolve([{
                    name: "English",
                    isoName: "English",
                    isoCodes: ["en"],
                    folder: "en.lproj",
                    "text-direction": "ltr"
                }
                ])
            }).then($.proxy(this.setLocales, this))
        },
        setLocales: function(b) {
            this.set("locales", b.map(function(b) {
                return a.create(b)
            }))
        },
        localeForKey: function(a) {
            return this.locales.find(function(b) {
                return b.matches(a)
            })
        },
        hasMultipleLocales: function() {
            return this.locales.length > 1
        }.property("locales"),
        setCurrentLocale: function() {
            this.set("currentLocale", b.get("locales").map(this.localeForKey, this).compact().get(0) || this.get("locales.0"))
        }.observes("locales"),
        path: function() {
            return this.get("currentLocale").folder + "/"
        }.property("currentLocale"),
        setStrings: function() {
            Em.STRINGS = this.get("currentLocale.strings")
        }.observes("currentLocale")
    })
}), define("shared/toc-item", [], function() {
    return Em.Mixin.create({
        id: null,
        name: null,
        icon: null,
        parent: null,
        book: null,
        path: function() {
            for (var a = [], b = this.get("parent"); b;)
                a.push(b), b = b.get("parent");
            return a.reverse()
        }.property("parent"),
        breadcrumb: function() {
            return this.get("path").map(function(a) {
                return a.name
            }).join(" > ")
        }.property("path")
    })
}), define("shared/topic/model", ["shared/toc-item"], function(a) {
    var b = "HTML_LOADED", c = "HTML_FAILED";
    return Em.Object.extend(a, Ember.Evented, {
        href: null,
        prev: null,
        next: null,
        template: null,
        templatePromise: null,
        isLoaded: !1,
        isAsync: !1,
        isError: !1,
        init: function() {
            this._super();
            var a = Em.RSVP.defer();
            this.set("templatePromise", a.promise), this.on("HTML_LOADED", this, a.resolve), this.on("HTML_FAILED", this, a.reject)
        },
        routeSlug: function() {
            return this.get("id")
        }.property("id", "name"),
        categories: [],
        isLanding: function() {
            return this.get("categories").contains("landing")
        }.property("categories"),
        isGlossary: function() {
            return this.get("categories").contains("glossary")
        }.property("categories"),
        isCopyright: function() {
            return this.get("categories").contains("copyright")
        }.property("categories"),
        hasPrevOrNext: function() {
            return !!this.get("prev")||!!this.get("next")
        }.property("prev", "next"),
        crossReferences: Em.Object.create({}),
        fetchTopicHTML: function() {
            var a = this.get("templatePromise"), b = this.get("href");
            return this.get("isLoaded") ? a : b ? ($.ajax({
                context: this,
                async: this.get("isAsync"),
                url: App.get("bundle.path") + b,
                success: this._htmlLoadSuccess,
                error: this._htmlLoadFailure
            }), a) : this._htmlLoadFailure()
        },
        _htmlLoadSuccess: function(a) {
            if (!a)
                return this._htmlLoadFailure();
            var c = App.get("bundle.path");
            return a = a.replace(/[\W\w]*<body/, "<div").replace(/\/body>[\W\w]*/, "/div>").replace(/(src=["'](?!data))/g, "$1%@".fmt(c)), a = this.preProcessAsDOM($(a)).prop("outerHTML"), this.set("isError", !1), this.set("template", a), this.set("isLoaded", !0), this.trigger(b), "HelpViewer"in window && "mtContentAccessed"in HelpViewer && HelpViewer.mtContentAccessed(this.get("id") + " " + this.get("name"), App.book.title), this.get("templatePromise")
        },
        _htmlLoadFailure: function(a, b, d) {
            (a || d) && Em.Logger.warn(d.message || "%@ %@".fmt(a.statusText, a.status));
            var e = '<div class="apd-topic load-error"><h1>%@</h1>%@</div>'.fmt("$TOPIC_LOAD_ERROR$".loc(), "$CONNECT_TO_INTERNET$".loc());
            return this.set("isError", !0), this.set("template", e), this.set("isLoaded", !0), this.trigger(c), "HelpViewer"in window && "mtStatisticsIncrement"in window.HelpViewer && HelpViewer.mtStatisticsIncrement(1, 0, 0, 0), this.get("templatePromise")
        },
        preProcessAsDOM: function(a) {
            var b = this;
            a.addClass("apd-topic").removeAttr("id"), a.find("h1").attr({
                id: this.get("id"),
                tabindex: "-1"
            }), a.find(".Task>.Name").attr("tabindex", "1");
            var c = this.get("crossReferences");
            this.get("isGlossary");
            if (a.find("a[data-xref]").replaceWith(function(a, d) {
                var e = $(this).attr("data-xref"), f = App.book.modelForID(e);
                return f?!f instanceof b.constructor ? (console.warn('Found cross-reference to non-Topic item "%@" (%@)'.fmt(f.name, e)), d) : "section" === $(this).attr("data-target-type") ? d : (c.set(e, f), f.get("isGlossary") ? '<a href="#/%@1" glossary="%@1">%@2</a>'.fmt(e, d) : '{{#link-to "topic" view.content.crossReferences.%@.routeSlug}}%@{{/link-to}}'.fmt(e, d)) : void console.warn("Found cross-reference to missing model %@".fmt(e))
            }), a.find("a[href]").each(function() {
                var a = $(this).attr("href");
                a.match(/^http/) && ($(this).attr("target", "_blank"), a.match(/\.mov(\?|")/) && $(this).addClass("video"))
            }), "apd-schema" === App.get("book.source_schema")) {
                var d = a.find(".Task").has("h2.Name");
                d.each(function() {
                    var a = $(this);
                    if ($name = a.find("h2.Name"), $name.html('<span class="task-arrow"></span>' + $name.text()), d.length > 1) {
                        var b = a.find(".TaskBody");
                        $name.attr("aria-expanded", !0), b.attr("aria-hidden", !1)
                    }
                }), a = this.transformChanges(a)
            }
            return a
        },
        transformChanges: function(a) {
            a.find("a[name]").remove(), a.find("span.Note, span.Tip, span.Important, span.Caution, span.Notice, span.Warning").text(function(a, b) {
                return b.replace(/[\s\xA0]+/g, " ")
            }), a.find(".Description > .Term").append(" ");
            var b = {
                "p.CodeLine": '<code class="CodeLine">',
                "span.CodeBody": "<code>",
                "p.Figure": "<figure>"
            };
            return $.each(b, function(b, c) {
                a.find(b).replaceWith(function(a, b) {
                    return $(c).addClass(this.className).append(b)
                })
            }), a
        }
    })
}), define("shared/section", ["shared/toc-item"], function(a) {
    return Em.Object.extend(a, {
        children: [],
        totalDescendants: function() {
            var a = this.get("children"), b = a.length;
            return a.forEach(function(a) {
                b += a.children ? a.get("totalDescendants") : 0
            }), b
        }.property("children")
    })
}), define("shared/url", ["shared/toc-item"], function(a) {
    return Em.Object.extend(a, {
        href: null,
        isUrl: !0,
        url: function() {
            return encodeURI(this.get("href"))
        }.property("href")
    })
}), define("shared/book", ["shared/topic/model", "shared/section", "shared/url"], function(a, b, c) {
    var d = 1;
    return Em.Object.extend({
        id: null,
        framework: null,
        source_schema: null,
        birdseed_version: null,
        locale: null,
        collect_feedback: !1,
        enable_tracking: !1,
        product: null,
        platform: null,
        version: null,
        title: null,
        icon: null,
        landing: null,
        firstTopic: null,
        lastTopic: null,
        toc: [],
        sections: {},
        topics: {},
        copyright: null,
        copyright_text: null,
        isSingleTopicBook: !1,
        topicModelMixin: {},
        init: function() {
            if (this.birdseed_version < d) {
                var e = "The book you are trying to open uses too old of a birdseed revision. Expected %@, got %@".fmt(d, this.birdseed_version);
                throw $("body").css({
                    background: "#fdd",
                    "text-align": "center"
                }).text(e), new Error(e)
            }
            var f = a.extend(this.get("topicModelMixin"));
            this.rewriteObjectAsModels("topics", f), this.rewriteObjectAsModels("urls", c), this.rewriteObjectAsModels("sections", b), this.get("sections").forEach(function(a, b) {
                b.children && b.set("children", b.get("children").map(function(a) {
                    var c = this.modelForID(a);
                    return c && c.set("parent", b), c
                }, this).filter(function(a) {
                    return !!a
                }))
            }, this), this.set("toc", this.get("toc").map(this.modelForID, this)), this.set("landing", this.modelForID(this.get("landing"))), this.set("copyright", this.modelForID(this.get("copyright"))), this.set("isSingleTopicBook", 1 === this.topics.length), this.createLinkedTopicList()
        },
        rewriteObjectAsModels: function(a, b) {
            var c, d, e = this.get(a), f = Em.Map.create({});
            for (c in e)
                d = b.create(e[c]), d.setProperties({
                    id: d.get("isUrl") ? d.get("url"): c,
                    book: this
                }), f.set(c, d);
            this.set(a, f)
        },
        modelForID: function(a) {
            return this.topics.get(a) || this.sections.get(a) || this.urls.get(a)
        },
        createLinkedTopicList: function() {
            var a = this.topicsInList(this.get("toc"));
            return this.set("firstTopic", a[0]), this.set("lastTopic", a[a.length - 1]), a.forEach(function(b, c) {
                c > 0 && b.set("prev", a[c - 1]), c + 1 < a.length && b.set("next", a[c + 1])
            }), a
        },
        topicsInList: function(a) {
            var b = this;
            return $.map(a, function(a) {
                if (!a) {
                    var c = "Error building TOC. navigation.json file has an id in the toc list that is not found in the topics list.";
                    return Em.isEmpty(App.get("ENVIRONMENT")) ? Em.Logger.error(c) : $("body").append('<div class="loading loading-error"><h1>Hmmm.</h1><p>' + c + "</p></div>"), !1
                }
                return a.children ? b.topicsInList(a.children) : a
            })
        }
    })
}), define("shared/mixin/tap-click", [], function() {
    return Em.Mixin.create({
        $touchedElement: null,
        touchedScrollTop: null,
        setTouched: function(a) {
            this.$touchedElement = $(a), this.touchedScrollTop = this.touchedScrollParent().prop("scrollTop")
        },
        touchedScrollParent: function() {
            var a = this.$touchedElement.parents(".scroll");
            return a.length || (a = $("body")), a
        },
        clearTouched: function() {
            this.$touchedElement = null, this.touchedScrollTop = null
        },
        touchStart: function(a) {
            $(a.target).attr("data-ember-action") || this.setTouched(a.target)
        },
        touchMove: Em.aliasMethod("clearTouched"),
        touchCancel: Em.aliasMethod("clearTouched"),
        touchEnd: function(a) {
            if (this.$touchedElement && this.$touchedElement.is(a.target)) {
                var b = this.touchedScrollParent().prop("scrollTop");
                this.touchedScrollTop === b && (a.preventDefault(), this.trigger("click", a))
            }
            this.clearTouched()
        }
    })
}), define("shared/topic/view", ["shared/mixin/tap-click", "shared/browser"], function(a, b) {
    return Em.View.extend(a, {
        tagName: "article",
        classNames: ["instapaper_ignore"],
        template: Em.Handlebars.compile('<div class="topic-container topic-loading"><div class="spinner"></div></div>'),
        waitForTemplateLoad: function() {
            this.get("content") && this.get("content.templatePromise")["finally"](Em.run.bind(this, this.setTemplateFromModel))
        }.observes("content.templatePromise").on("init"),
        setTemplateFromModel: function() {
            if (!this.get("isDestroying")) {
                var a = this.get("content.template");
                this.set("template", Em.Handlebars.compile(a)), this.rerender()
            }
        },
        click: function(a) {
            var c, d, e = $(a.target), f = function(a) {
                a && (b.isInHelpViewer ? location.href = a : window.open(a))
            };
            if (e.is("a[glossary]")) {
                var g = this.get("content") || this.get("content").objectAt(0);
                c = g.crossReferences[e.attr("glossary")], this.showGlossary(c), a.preventDefault()
            } else if (e.is(".LinkAppleWebMovie"))
                f(e.find("a[href]").attr("href"));
            else if (e.is("a[href]") && "_blank" === e.attr("target"))
                f(e.attr("href")), a.preventDefault();
            else if (e.is(".Task .Name")) {
                var h = "false" !== e.attr("aria-expanded");
                d = e.siblings(".TaskBody"), e.attr("aria-expanded", !h), d.attr("aria-hidden", h);
                var i = d.attr("id") + "-is-expanded";
                h ? window.sessionStorage.removeItem(i) : (window.sessionStorage.setItem(i, "true"), App.get("trackingController").taskExpanded(App.get("currentTopic"), e.text(), this.$().find(".Task .Name").index(e)))
            } else
                e.is(".cur-lang") && this.showLocalePicker();
            App.hidePanels()
        },
        updateDocumentTitle: function() {
            var a, b, c, d, e = App.get("currentTopic");
            d = this.$ ? this.$().find("h1").text() : null, a = d || e.get("name"), b = App.get("book.title"), c = e === App.get("book.landing") ? b : a === b ? b : "%@ - %@".fmt(a, b), document.title = c
        },
        showGlossary: function(a) {
            this.get("controller.target").transitionTo("topic", a)
        },
        showLocalePicker: function() {
            return !1
        }
    })
}), define("shared/topic/collection-view", ["shared/mixin/tap-click", "shared/topic/view"], function(a, b) {
    return Em.CollectionView.extend(a, {
        itemViewClass: b,
        contentBinding: "controller.content"
    })
}), define("shared/topic/route", [], function() {
    return Em.Route.extend({
        model: function(a) {
            var b = a.topic_id ? a.topic_id.split(":")[0]: "";
            return App.get("book").modelForID(b) || App.get("book.landing")
        },
        setupController: function(a, b) {
            App.set("currentTopic", b), b.fetchTopicHTML()["finally"](function() {
                a.set("content", [b]), App.get("trackingController").topicLoaded(b)
            })
        }
    })
}), define("shared/tracking/event", ["shared/browser"], function(a) {
    var b, c, d, e = "appleproductdocumentation", f = "metrics.apple.com", g = "securemetrics.apple.com", h = Em.computed.defaultTo;
    return d = {
        events: "",
        eVar1: null,
        prop1: h("eVar1"),
        eVar2: navigator.userAgent,
        prop2: h("eVar2"),
        eVar3: "%@:%@".fmt(a.get("name"), a.get("version")),
        prop3: h("eVar3"),
        eVar4: a.get("os"),
        prop4: h("eVar4"),
        eVar5: "%@:%@".fmt(a.get("name"), a.get("os")),
        prop5: h("eVar5"),
        eVar6: function() {
            return "%@:%@".fmt(App.get("NAME"), App.get("VERSION"))
        }.property(),
        prop6: h("eVar6"),
        eVar7: function() {
            return "help:%@".fmt(this.get("eVar10"))
        }.property("eVar10"),
        prop7: h("eVar7"),
        eVar8: function() {
            return "%@:%@".fmt(this.get("eVar7"), this.get("eVar11"))
        }.property("eVar7", "eVar11"),
        prop8: h("eVar8"),
        eVar9: function() {
            return "%@:%@".fmt(this.get("eVar8"), this.get("eVar12"))
        }.property("eVar8", "eVar12"),
        prop9: h("eVar9"),
        eVar10: function() {
            return App.get("book.product")
        }.property(),
        prop10: h("eVar10"),
        eVar11: function() {
            return App.get("book.platform")
        }.property(),
        prop11: h("eVar11"),
        eVar12: function() {
            return App.get("book.version")
        }.property(),
        prop12: h("eVar12"),
        eVar13: a.get("currentLocale"),
        prop13: h("eVar13"),
        eVar14: function() {
            return App.get("bundle.currentLocale.isoCode")
        }.property(),
        prop14: h("eVar14"),
        eVar15: navigator.language,
        prop15: h("eVar15"),
        eVar16: null,
        prop16: h("eVar16"),
        eVar17: null,
        prop17: h("eVar17"),
        eVar18: null,
        prop18: h("eVar18"),
        eVar20: null,
        prop20: h("eVar20"),
        eVar21: null,
        prop21: h("eVar21"),
        eVar22: null,
        prop22: h("eVar22"),
        eVar23: null,
        prop23: h("eVar23"),
        eVar28: null,
        prop28: h("eVar28")
    }, c = {
        event1: "view",
        event2: "searchWithResults",
        event3: "searchNoResults",
        event4: "searchClickthrough",
        event5: "submitFeedback",
        event7: "playMedia",
        event20: "task1",
        event21: "task2",
        event22: "task3",
        event23: "task4",
        event24: "task5",
        event25: "task6",
        event26: "task7",
        event27: "task8",
        event28: "task9",
        event29: "task10"
    }, b = {
        visitorNamespace: e,
        useLocalhostForTrackingServer: function() {
            return !Em.isEmpty(App.get("ENVIRONMENT"))&&!App.get("USE_OMNITURE_TEST_SERVER")
        },
        trackingServer: function() {
            return this.useLocalhostForTrackingServer() ? "localhost" : f
        }.property(),
        trackingServerSecure: function() {
            return this.useLocalhostForTrackingServer() ? "localhost" : g
        }.property(),
        server: function() {
            return App.get("book.title").toLowerCase()
        }.property(),
        pageName: function() {
            return "%@:%@".fmt(this.get("server"), this.get("name")).toLowerCase()
        }.property(),
        channel: h("pageName"),
        trackDownloadLinks: !1,
        trackExternalLinks: !1,
        trackInlineStats: !1,
        useForcedLinkTracking: !1,
        linkDownloadFileTypes: "exe,zip,wav,mp3,mov,mpg,avi,wmv,pdf,doc,docx,xls,xlsx,ppt,pptx",
        linkInternalFilters: "help.apple.com",
        linkLeaveQueryString: !1,
        linkTrackVars: Em.keys(d),
        linkTrackEvents: Em.keys(c),
        usePlugins: !1,
        doPlugins: $.noop,
        campaign: a.get("params.o") || null
    }, Em.Object.extend(b, d, {
        name: "",
        eventName: function() {
            return c[this.get("events")]
        }.property("events"),
        resolvedProperties: function() {
            var a = Em.keys(b).concat(Em.keys(d));
            return this.getProperties.apply(this, a)
        }.property()
    })
}), define("shared/tracking/controller", ["shared/tracking/event"], function(a) {
    return Em.ObjectController.extend({
        isProduction: !1,
        isEnabled: !1,
        originId: null,
        account: function() {
            return this.isProduction ? "aaplpdglobal" : "aaplpdglobaldev"
        }.property("isProduction"),
        siteCatalyst: function() {
            return s_gi ? s_gi(this.get("account")) : void 0
        }.property("account"),
        track: function(a, b) {
            if (this.isEnabled && "s_gi"in window) {
                var c = this.get("siteCatalyst");
                $.extend(c, this.get("resolvedProperties")), c.t(!0, "o", this.get("eventName"))
            }
        }.observes("content"),
        topicLoaded: function(b) {
            var c = b.name;
            this.set("content", a.create({
                events: "event1",
                name: c,
                eVar1: (b.get("is_glossary") ? "glossary:" : "") + b.name,
                eVar28: b.id
            }))
        },
        taskExpanded: function(b, c, d) {
            d >= 0 && 9 >= d && this.set("content", a.create({
                events: "event" + (d + 20),
                name: b.name,
                eVar1: (b.get("is_glossary") ? "glossary:" : "") + b.name,
                eVar22: c,
                eVar23: d + 1,
                eVar28: b.id
            }))
        },
        performSearch: function(b) {
            var c = b.matches.length ? "search": "search: no results";
            this.set("content", a.create({
                events: b.matches.length ? "event2": "event3",
                name: c,
                eVar16: b.query
            }))
        },
        searchResultSelect: function(b, c) {
            var d = b.get("topics")[c];
            this.set("content", a.create({
                events: "event4",
                eVar1: "search: result click-through",
                eVar16: b.query,
                eVar17: d.name,
                eVar18: d.id
            }))
        },
        feedbackSubmit: function(b) {
            var c = App.get("currentTopic");
            this.set("content", a.create({
                events: "event5",
                name: "feedback",
                eVar1: (c.get("is_glossary") ? "glossary:" : "") + c.name,
                eVar21: b,
                eVar28: c.id
            }))
        },
        setDefaultBrowser: function(a, b) {
            this.trackClick(a.name, "event6")
        },
        trackClick: function(b) {
            this.set("content", a.create({
                events: "event13",
                pageName: b,
                eVar1: b
            }))
        },
        mediaStart: function() {}
    })
}), define("precompiled/shared/component/modal", [], function() {
    return Em.Handlebars.template(function(a, b, c, d, e) {
        this.compilerInfo = [4, ">= 1.0.0"], c = this.merge(c, Em.Handlebars.helpers), e = e || {};
        var f, g = "";
        return e.buffer.push("<div class='modal-header'><h2>"), f = c._triageMustache.call(b, "view.headerLabel", {
            hash: {},
            hashTypes: {},
            hashContexts: {},
            contexts: [b],
            types: ["ID"],
            data: e
        }), (f || 0 === f) && e.buffer.push(f), e.buffer.push("</h2></div>\n<div class='modal-content scroll'>\n	<button name='close'>"), f = c._triageMustache.call(b, "view.closeButtonLabel", {
            hash: {},
            hashTypes: {},
            hashContexts: {},
            contexts: [b],
            types: ["ID"],
            data: e
        }), (f || 0 === f) && e.buffer.push(f), e.buffer.push("</button>\n	"), f = c._triageMustache.call(b, "yield", {
            hash: {},
            hashTypes: {},
            hashContexts: {},
            contexts: [b],
            types: ["ID"],
            data: e
        }), (f || 0 === f) && e.buffer.push(f), e.buffer.push("\n</div>\n<div class='modal-footer'>\n	<button name='close'>"), f = c._triageMustache.call(b, "view.closeButtonLabel", {
            hash: {},
            hashTypes: {},
            hashContexts: {},
            contexts: [b],
            types: ["ID"],
            data: e
        }), (f || 0 === f) && e.buffer.push(f), e.buffer.push("</button>\n</div>"), g
    })
}), define("shared/computed", [], function() {
    function a(a, b, c) {
        return Em.computed(a, function() {
            return Em.get(this, a) ? b : c
        })
    }
    return {
        loc: function() {
            var a = Array.prototype.shift.apply(arguments), b = arguments;
            return Em.computed("Em.STRINGS", function() {
                return String.prototype.loc.apply(a, b)
            })
        },
        ternaryValue: a,
        truthString: function(b) {
            return a(b, "true", "false")
        },
        invertedTruthString: function(b) {
            return a(b, "false", "true")
        }
    }
}), define("shared/component/modal", ["precompiled/shared/component/modal", "shared/computed"], function(a, b) {
    return Em.View.extend({
        layout: a,
        tagName: "div",
        classNames: ["modal"],
        ariaRole: "dialog",
        isVisible: !1,
        closeButtonLabel: b.loc("$GLOSSARY_CLOSE_BUTTON$"),
        headerLabel: null,
        $previousFocus: null,
        click: function(a) {
            var b = $(a.target);
            (this.$().is(a.target) || b.is("[name=close]")) && this.dismiss()
        },
        show: function() {
            this.$().toggleClass("has-modal-header", !Em.isEmpty(this.get("headerLabel"))), this.set("$previousFocus", $(":focus")), this.set("isVisible", !0)
        },
        dismiss: function() {
            var a = this, b = this.$();
            b && this.get("isVisible") && (b.addClass("dismiss"), setTimeout(function() {
                a.set("isVisible", !1), a.get("$previousFocus") && a.get("$previousFocus").focus(), a.set("$previousFocus", null), b.removeClass("dismiss")
            }, 250))
        },
        touchEnabled: function() {
            return !!("ontouchstart"in window)
        }.property()
    })
}), define("precompiled/shared/video/video", [], function() {
    return Em.Handlebars.template(function(a, b, c, d, e) {
        this.compilerInfo = [4, ">= 1.0.0"], c = this.merge(c, Em.Handlebars.helpers), e = e || {};
        var f = "", g = this.escapeExpression;
        return e.buffer.push("<video controls "), e.buffer.push(g(c["bind-attr"].call(b, {
            hash: {
                id: "videoUrl"
            },
            hashTypes: {
                id: "ID"
            },
            hashContexts: {
                id: b
            },
            contexts: [],
            types: [],
            data: e
        }))), e.buffer.push(" "), e.buffer.push(g(c["bind-attr"].call(b, {
            hash: {
                src: "videoUrl"
            },
            hashTypes: {
                src: "ID"
            },
            hashContexts: {
                src: b
            },
            contexts: [],
            types: [],
            data: e
        }))), e.buffer.push(' autoplay="true" type="video/mp4" width="100%" x-webkit-airplay="allow" bgcolor="white"></video>\n<!--<div class="controllerPanel" style="width: 848px; height: 480px;">\n	<div id="ACMedia-controls_1399921063395" class="ACMediaControls" tabindex="0" style="outline: none; width: 848px; height: 480px;">\n		<a href="#video"></a>\n		<div id="ACMedia-alert-display-container_1399921063395" class="ACMediaAlertDisplay"></div>\n		<div id="ACMedia-track-text_1399921063395" class="ACMediaTrackText"><span id="ACMedia-track-text-span_1399921063395"></span></div>\n		<div id="ACMedia-controls-panel_1399921063395" class="mediaControllerPanel fade">\n			<div class="slim-left-cap"></div>\n			<div id="ACMedia-media-controller_1399921063395" class="ACMediaController">\n				<div id="ACMedia-volume-mute_1399921063395" class="volumeMute volumeMute-enabled" role="button" tabindex="0">Mute Volume</div>\n				<div class="volumePanel">\n					<div id="ACMedia-volume-track_1399921063395" class="volumeTrack">\n						<div id="ACMedia-control-volume-progress_1399921063395" class="volumeTrackProgress" style="width: 38px;"></div>\n						<div id="ACMedia-volume-handle_1399921063395" class="volumePlayHead selected volumePlayHead-enabled" role="slider" aria-label="Volume" aria-valuemin="0" aria-valuemax="100" aria-valuenow="100" tabindex="0" style="left: 38px;"></div>\n					</div>\n				</div>\n				<div id="ACMedia-volume-full_1399921063395" class="volumeFull volumeFull-enabled" role="button" tabindex="0">Full Volume</div>\n				<div id="ACMedia-control-fastbackward_1399921063395" class="fastBackward fastBackward-enabled" role="button" tabindex="0">Fast Reverse</div>\n				<div id="ACMedia-control-play-pause_1399921063395" tabindex="0">\n					<div role="button" tabindex="-1" class=" play play-enabled" id="ACMedia-play-control_1399921063395" style="visibility: visible;">Play</div>\n					<div role="button" tabindex="-1" class=" pause pause-enabled " id="ACMedia-pause-control_1399921063395" style="visibility: hidden;">Pause</div>\n				</div>\n				<div id="ACMedia-control-fastforward_1399921063395" class="fastForward fastForward-enabled" role="button" tabindex="0">Fast Forward</div>\n				<div id="ACMedia-track-container_1399921063395" class="track-container" style="opacity: 1;">\n					<div id="ACMedia-control-time-display_1399921063395" class="timeDisplay timeDisplay-enabled" aria-label="elapsed" role="timer"><span id="ACMedia-min-played_1399921063395">02</span>:<span id="ACMedia-sec-played_1399921063395">28</span></div>\n					<div class="trackPanel">\n						<div id="ACMedia-control-track_1399921063395" class="track">\n							<div id="ACMedia-control-loaded-progress_1399921063395" class="loadedProgress" style="width: 100%;"></div>\n							<div id="ACMedia-control-track-progress_1399921063395" class="trackProgress" style="width: 101px;"></div>\n							<div id="ACMedia-control-playhead_1399921063395" class="playHead playHead-enabled selected" style="left: 101px;"></div>\n						</div>\n						<div id="ACMedia-track-end-cap_1399921063395" class=" track-right-cap-loaded"></div>\n					</div>\n					<div id="ACMedia-control-duration-display_1399921063395" class="durationDisplay durationDisplay-enabled" aria-label="remaining" role="timer">-<span id="ACMedia-min-remain_1399921063395">05</span>:<span id="ACMedia-sec-remain_1399921063395">06</span></div>\n				</div>\n				<div id="ACMedia-settings-controls_1399921063395" class=" settingsControls settingsControls-captions-sizes-fullscreen">\n					<div id="ACMedia-captions-control_1399921063395" class="captionsControl captionsControl-enabled" tabindex="0" role="checkbox" aria-checked="false">Closed Captions</div>\n					<div id="ACMedia-sizes-control_1399921063395" class="sizesControl sizesControl-enabled">Video Size</div>\n					<div id="ACMedia-download-control_1399921063395" class="downloadControl">Download Video</div>\n					<div id="ACMedia-share-control_1399921063395" class="shareControl">Share Video</div>\n					<div id="ACMedia-fullscreen-control_1399921063395" class="fullscreenControl fullscreenControl-enabled">Full Screen</div>\n				</div>\n				<div id="ACMedia-stream-control_1399921063395" class="streamText"></div>\n			</div>\n			<div class="slim-right-cap"></div>\n		</div>\n	</div>\n</div>\n-->'), f
    })
}), define("shared/video/view", ["shared/component/modal", "precompiled/shared/video/video", "shared/computed"], function(a, b, c) {
    return a.extend({
        template: b,
        classNames: ["modal-video-player"],
        headerLabel: "",
        showVideo: function(a) {
            this.set("controller.videoUrl", a), this.show()
        },
        dismiss: function() {
            this._super(), Em.run.later(this, function() {
                this.set("controller.videoUrl", "")
            }, 300)
        }
    })
}), define("shared/app", ["shared/bundle", "shared/book", "shared/topic/collection-view", "shared/topic/route", "shared/tracking/controller", "shared/video/view", "shared/browser"], function(a, b, c, d, e, f, g) {
    var h, i;
    return navigator.userAgent.indexOf("WebKit") >= 0 && navigator.userAgent.indexOf("Mobile") >= 0 && $("body").addClass("no-hover"), Em.TEMPLATES.application = Em.Handlebars.compile("{{outlet}}"), h = Em.Application.extend({
        NAVIGATION_FILE: "navigation.json",
        SEARCH_FILE: "search.json",
        VERSION: APP_VERSION,
        NAME: "base",
        ENVIRONMENT: null,
        USE_OMNITURE_TEST_SERVER: !1,
        bundle: a.create({}),
        book: null,
        currentTopic: null,
        bookIcon: function() {
            var a = this.get("book.icon");
            return a ? this.get("bundle.path") + this.get("book.icon") : void 0
        }.property("App.book", "App.bundle"),
        init: function() {
            this._super(), this.deferReadiness(), $("html").addClass(g.get("classNames"));
            var a = "1" === g.get("params.omniture");
            a && this.set("USE_OMNITURE_TEST_SERVER", !0)
        },
        ready: function() {
            this._super(), this.updateLandingPageClassNameOnBody()
        },
        addLanguageAndDirection: function() {
            var a = this.get("bundle.currentLocale");
            $("html").attr("lang", a.get("isoCode")), $("body").attr("dir", a.get("text-direction"))
        }.observes("bundle.currentLocale"),
        loadBook: function() {
            $.ajax({
                url: this.get("bundle.path") + this.get("NAVIGATION_FILE"),
                dataType: "json",
                context: this,
                success: this.bookDidLoad,
                error: function(a, b, c) {
                    var d = "development" === this.get("VERSION") ? this.get("VERSION"): c.getResponseHeader("x-server-type");
                    Em.isEmpty(d) || $(".loading").addClass("loading-error").html("<h1>Hmmm.</h1><p>This book exists...but I couldn’t find any .lproj folders.</p><p>Please contact your build engineer for assistance.</p>")
                }
            })
        }.observes("bundle.currentLocale"),
        removeInitialLoading: function() {
            $(".loading").remove()
        },
        bookDidLoad: function(a, c, d) {
            this.removeInitialLoading();
            var e = "development" === this.get("VERSION") ? this.get("VERSION"): d.getResponseHeader("x-server-type");
            this.set("ENVIRONMENT", e), $("html").addClass(e);
            var f = this.willCreateBookWithData(a);
            this.set("book", b.create(f)), document.title = this.get("book.title"), this.advanceReadiness(), i.get("USE_OMNITURE_TEST_SERVER")===!1&&!Em.isEmpty(e) && this.get("trackingController.isEnabled") && Em.Logger.warn('Omniture data collection turned OFF for non-production environments. Override in console: App.set("USE_OMNITURE_TEST_SERVER", true);')
        },
        willCreateBookWithData: function(a) {
            return a
        },
        isOnLandingPage: function() {
            return this.get("currentTopic.id") === this.get("book.landing.id")
        }.property("currentTopic", "book"),
        updateLandingPageClassNameOnBody: function() {
            this.get("book.isSingleTopicBook") || $("body").toggleClass("landing-page", this.get("isOnLandingPage"))
        }.observes("isOnLandingPage"),
        trackingController: function() {
            return e.create({
                isProduction: "development" !== this.get("VERSION") && Em.isEmpty(this.get("ENVIRONMENT")),
                isEnabled: this.book.enable_tracking&&!g.isInHelpViewer
            })
        }.property("ENVIRONMENT", "book"),
        trackingControllerUpdatedLog: function() {
            Em.Logger.log("Omniture data collection is " + (this.get("USE_OMNITURE_TEST_SERVER") ? "ON" : "OFF"))
        }.observes("USE_OMNITURE_TEST_SERVER"),
        hidePanels: $.noop,
        isTOCAlwaysExpanded: !1,
        ApplicationView: Em.View.extend({
            ariaRole: "application"
        }),
        IndexView: c,
        IndexRoute: d,
        TopicView: c,
        TopicRoute: d,
        TopicController: Em.ArrayController.extend({
            itemController: "single-topic"
        }),
        IndexController: this.TopicController,
        SingleTopicController: Em.ObjectController.extend(),
        changeLanguage: function(a) {
            location.search = "lang=%@".fmt(this.get("value"))
        },
        debugInfo: function() {
            Em.Logger.log("app_version: %@".fmt(APP_VERSION)), Em.Logger.log("framework: %@".fmt(i.get("framework"))), Em.Logger.log("schema: %@".fmt(i.get("book.source_schema"))), Em.Logger.log("build: %@".fmt(i.get("book.build_id"))), Em.Logger.log("locale: %@".fmt(i.get("bundle.currentLocale.isoCode"))), Em.Logger.log("title: %@".fmt(i.get("book.title"))), i.get("book.enable_tracking") ? Em.Logger.log('tracking product: "%@", platform: "%@", version: "%@"'.fmt(i.get("book.product"), i.get("book.platform"), i.get("book.version"))) : Em.Logger.log("tracking: disabled"), Em.Logger.log("feedback: %@".fmt(i.get("book.collect_feedback") ? "collect" : "do not collect"))
        }
    }), i = h.create({}), i.Router.map(function() {
        this.resource("index", {
            path: "/"
        }), this.resource("topic", {
            path: "/:topic_id"
        })
    }), i
}), define("precompiled/app", [], function() {
    return Em.Handlebars.template(function(a, b, c, d, e) {
        function f(a, b) {
            var d, e, f;
            e = c.linkTo || a && a.linkTo, f = {
                hash: {},
                hashTypes: {},
                hashContexts: {},
                inverse: j.noop,
                fn: j.program(2, g, b),
                contexts: [a, a],
                types: ["STRING", "ID"],
                data: b
            }, d = e ? e.call(a, "topic", "App.book.copyright", f) : k.call(a, "linkTo", "topic", "App.book.copyright", f), d || 0 === d ? b.buffer.push(d) : b.buffer.push("")
        }
        function g(a, b) {
            var d;
            d = c._triageMustache.call(a, "App.book.copyright_text", {
                hash: {},
                hashTypes: {},
                hashContexts: {},
                contexts: [a],
                types: ["ID"],
                data: b
            }), d || 0 === d ? b.buffer.push(d) : b.buffer.push("")
        }
        this.compilerInfo = [4, ">= 1.0.0"], c = this.merge(c, Em.Handlebars.helpers), e = e || {};
        var h, i = "", j = this, k = c.helperMissing, l = this.escapeExpression;
        return e.buffer.push("\n\n<div class='fixed'>\n	<div class='centered'>\n		"), h = c._triageMustache.call(b, "outlet", {
            hash: {},
            hashTypes: {},
            hashContexts: {},
            contexts: [b],
            types: ["ID"],
            data: e
        }), (h || 0 === h) && e.buffer.push(h), e.buffer.push("\n	</div>\n\n	"), e.buffer.push(l(c.view.call(b, "App.NavigationView", {
            hash: {},
            hashTypes: {},
            hashContexts: {},
            contexts: [b],
            types: ["ID"],
            data: e
        }))), e.buffer.push("\n\n  \n  <div class='copyright-text'><p>"), h = c["if"].call(b, "App.book.copyright", {
            hash: {},
            hashTypes: {},
            hashContexts: {},
            inverse: j.program(2, g, e),
            fn: j.program(1, f, e),
            contexts: [b],
            types: ["ID"],
            data: e
        }), (h || 0 === h) && e.buffer.push(h), e.buffer.push("\n  "), h = c._triageMustache.call(b, "App.currentTopic.disclaimer", {
            hash: {},
            hashTypes: {},
            hashContexts: {},
            contexts: [b],
            types: ["ID"],
            data: e
        }), (h || 0 === h) && e.buffer.push(h), e.buffer.push("\n  </p></div>\n\n</div>\n"), i
    })
}), define("topic/controller", [], function() {
    return Em.ArrayController.extend({
        _previousTopic: null,
        _currentTopic: null,
        currentTopic: function(a, b, c) {
            return arguments.length > 1 && (this.set("_previousTopic", c), this.set("_currentTopic", b)), this.get("_currentTopic")
        }.property(),
        currentTopicContentIndex: function() {
            var a = this.get("currentTopic"), b = this.get("content"), c = Math.max(0, b.indexOf(a));
            return c
        }.property("currentTopic"),
        shouldAutoAdvance: !1,
        autoAdvanceOnLanding: function() {
            this.get("currentTopic") === App.get("book.landing") && this.set("shouldAutoAdvance", !0)
        }.observes("currentTopic").on("init"),
        hasLooped: !1,
        trackTopicLoad: function() {
            var a = this.get("currentTopic");
            Em.run.next(this, function() {
                var b = this.get("shouldAutoAdvance"), c = this.get("hasLooped");
                b && c || App.get("trackingController").topicLoaded(a)
            })
        }.observes("currentTopic")
    })
}), define("shared/mixin/swipe", [], function() {
    var a = 80;
    return Em.Mixin.create({
        swipeDown: $.noop,
        swipeDownLeft: $.noop,
        swipeDownRight: $.noop,
        swipeLeft: $.noop,
        swipeRight: $.noop,
        swipeUp: $.noop,
        swipeUpLeft: $.noop,
        swipeUpRight: $.noop,
        touchStart: function(a) {
            if (1 === a.originalEvent.changedTouches.length) {
                var b = a.originalEvent.changedTouches[0];
                this.set("swipeStartX", b.screenX), this.set("swipeStartY", b.screenY)
            }
            this._super(a)
        },
        touchCancel: function() {
            this.set("swipeStartX", null), this.set("swipeStartY", null), this._super(e)
        },
        touchEnd: function(b) {
            var c, d, e, f, g = this.get("swipeStartX"), h = this.get("swipeStartY"), i = b.originalEvent.changedTouches[0];
            if (g && h) {
                if (c = g - i.screenX, d = h - i.screenY, e = Math.sqrt(c * c + d * d), a > e)
                    return;
                f = 180 * Math.atan2(c, d) / Math.PI, f = (f + 360)%360, 22.5 > f ? this.swipeUp() : 67.5 > f ? this.swipeUpLeft() : 112.5 > f ? this.swipeLeft() : 157.5 > f ? this.swipeDownLeft() : 202.5 > f ? this.swipeDown() : 247.5 > f ? this.swipeDownRight() : 292.5 > f ? this.swipeRight() : 337.5 > f ? this.swipeUpRight() : this.swipeUp()
            }
            this.set("swipeStartX", null), this.set("swipeStartY", null), this._super(b)
        }
    })
}), define("precompiled/topic/layout", [], function() {
    return Em.Handlebars.template(function(a, b, c, d, e) {
        this.compilerInfo = [4, ">= 1.0.0"], c = this.merge(c, Em.Handlebars.helpers), e = e || {};
        var f, g = "", h = this.escapeExpression;
        return e.buffer.push("<div class='topic-container'>\n  <div "), e.buffer.push(h(c["bind-attr"].call(b, {
            hash: {
                "class": "categories :topic-page"
            },
            hashTypes: {
                "class": "STRING"
            },
            hashContexts: {
                "class": b
            },
            contexts: [],
            types: [],
            data: e
        }))), e.buffer.push(">\n    "), f = c._triageMustache.call(b, "yield", {
            hash: {},
            hashTypes: {},
            hashContexts: {},
            contexts: [b],
            types: ["ID"],
            data: e
        }), (f || 0 === f) && e.buffer.push(f), e.buffer.push("\n  </div>\n</div>\n"), g
    })
}), define("shared/mixin/space-click", [], function() {
    return Em.Mixin.create({
        keyDown: function(a) {
            32 === a.keyCode && $(a.target).click(), this._super(a)
        }
    })
}), define("topic/view", ["shared/topic/view", "precompiled/topic/layout", "shared/computed", "shared/mixin/space-click"], function(a, b, c, d) {
    return a.extend(d, {
        layout: b,
        classNameBindings: ["showLearnMoreClass", "activeLearnMoreClass"],
        attributeBindings: ["ariaHidden:aria-hidden", "style"],
        ariaHidden: c.invertedTruthString("isActive"),
        learnMoreShiftTime: 600,
        inDOMPromise: null,
        isContentLoadedPromise: null,
        init: function() {
            this._super();
            var a = Em.RSVP.defer();
            this.set("inDOMPromise", a.promise), this.on("didInsertElement", this, function() {
                a.resolve()
            });
            var b = Em.RSVP.defer();
            this.set("isContentLoadedPromise", b.promise), this.on("didInsertElement", this, function() {
                if (this.get("content.isLoaded")) {
                    b.resolve();
                    var a = "#%@".fmt(this.get("content.id"));
                    this.$(a).trigger("slideDidLoad", this), this.watchTransitions()
                }
            })
        },
        style: function() {
            return "z-index:" + this.get("contentIndex")
        }.property(),
        watchTransitions: function() {
            if (this.get("content.isLoaded")) {
                var a = this.get("parentView.inTransition"), b = this.get("content"), c = this.get("controller.currentTopic"), d = this.get("controller._previousTopic"), e = "#%@".fmt(this.get("content.id"));
                a && b === c && this.$(e).trigger("slideWillBecomeActive", this), a && b === d && this.$(e).trigger("slideWillBecomeInactive", this), a || b !== c || this.$(e).trigger("slideDidBecomeActive", this), a || b !== d || this.$(e).trigger("slideDidBecomeInactive", this)
            }
        }.observes("content.isLoaded", "parentView.inTransition"),
        isActive: function() {
            return this.get("content") === App.get("currentTopic")
        }.property("controller.currentTopic"),
        isShowingLearnMore: !1,
        showLearnMoreClass: function() {
            return this.get("isShowingLearnMore") ? "show-learn-more" : ""
        }.property("isShowingLearnMore"),
        isActiveLearnMore: !1,
        activeLearnMoreClass: function() {
            return this.get("isActiveLearnMore") ? "active-learn-more" : ""
        }.property("isActiveLearnMore"),
        toggleActiveLearnMore: function() {
            Em.run.later(this, function() {
                this.get("isShowingLearnMore") ? this.set("isActiveLearnMore", !0) : this.set("isActiveLearnMore", !1)
            }, this.get("learnMoreShiftTime"))
        }.observes("isShowingLearnMore"),
        waitForTemplateLoad: function() {
            var a = this;
            this.get("content.templatePromise")["finally"](function() {
                Em.RSVP.allSettled(a.get("content.imagePromises"))["finally"](Em.run.bind(a, a.setTemplateFromModel))
            })
        }.observes("content.templatePromise").on("init"),
        click: function(a) {
            var b = $(a.target);
            if (this.get("isShowingLearnMore")) {
                if (!b.closest(".learn-more").length || b.is(".close-button"))
                    return this.closeLearnMore(), !1
            } else if ((b.is(".learn-more-link") || b.is(".learn-more-link-icon")) && "click" === a.type)
                return this.showLearnMore(b.text()), !1;
            if (b.is("a")) {
                var c = b.attr("href");
                0 === c.indexOf("http") && App.get("trackingController").trackClick(c)
            }
            this._super(a)
        },
        updateDocumentTitle: function() {
            document.title = App.get("book.title")
        },
        showLearnMore: function(a) {
            this.get("parentView").stopAutoAdvance(), this.set("isShowingLearnMore", !0), App.get("trackingController").taskExpanded(App.get("currentTopic"), a, 0)
        },
        updateAria: function() {
            var a = this.get("isShowingLearnMore") ? "false": "true";
            if ($(".active .learn-more").attr("aria-hidden", a), $(".active .learn-more .TaskBody").attr("aria-hidden", a), this.$()) {
                var b = this.$().find(".learn-more-text .EmphasisDisplay");
                b && (this.get("isShowingLearnMore") ? (b.attr("tabIndex", 0), b.focus()) : (b.attr("tabIndex", - 1), b.blur()))
            }
        }.observes("isShowingLearnMore"),
        closeLearnMore: function(a) {
            this.set("isShowingLearnMore", !1)
        }.observes("isActive"),
        didInsertElement: function() {
            this._super(), this.setTabIndexOnLinks()
        },
        setTabIndexOnLinks: function() {
            this.$() && this.$().find("a").attr("tabindex", this.get("isActive") ? 0 : - 1)
        }.observes("isActive")
    })
}), define("topic/collection-view", ["shared/mixin/tap-click", "shared/mixin/swipe", "shared/topic/collection-view", "topic/view"], function(a, b, c, d) {
    return c.extend(a, b, {
        itemViewClass: d,
        tagName: "section",
        ariaRole: "main",
        classNameBindings: ["suppressSlideTransitions"],
        SLIDE_TRANSITION_DURATION: 550,
        DISABLED_CLASSNAME: "disabled",
        suppressSlideTransitions: !0,
        childSlideWidth: null,
        slideBleedWidth: null,
        LANDING_TIMING: 2e3,
        DEFAULT_SLIDE_TIMING: 15e3,
        autoAdvanceInterval: null,
        isVoiceOverInstructionsComplete: !1,
        inTransition: !1,
        init: function() {
            this._super(), $("body").addClass("gallery"), $(document).click(Em.run.bind(this, function() {
                App.get("isOnLandingPage") || this.stopAutoAdvance()
            })), $.support.pageVisibility && $(document).on({
                "show.visibility": Em.run.bind(this, this._startAutoAdvance),
                "hide.visibility": Em.run.bind(this, this._pauseAutoAdvance)
            }), $(document).keydown(Em.run.bind(this, function(a) {
                switch (a.keyCode) {
                case 27:
                case 37:
                    App.get("isOnLandingPage") || this.stopAutoAdvance();
                    break;
                case 39:
                    this.stopAutoAdvance()
                }
            }))
        },
        updateChildInView: function() {
            if (this.get("content.length")) {
                var a = this, b = this.get("controller.currentTopicContentIndex"), c = this.get("childViews.length"), d = this.get("childViews.%@".fmt(b));
                this.voiceOverFocusTimeout && clearTimeout(this.voiceOverFocusTimeout), d.get("isContentLoadedPromise").then(function() {
                    App.get("anyTopicContentLoaded.resolve") && App.get("anyTopicContentLoaded").resolve()
                }), d.get("inDOMPromise").then(function() {
                    Em.run.next(a, function() {
                        if (!a.childSlideWidth || a.childSlideWidth === window.innerWidth) {
                            var e = function() {
                                a.childSlideWidth = d.$().width(), a.slideBleedWidth = (a.childSlideWidth - $("body").width()) / 2, a.$().css({
                                    width: a.childSlideWidth * c
                                })
                            };
                            e(), a.childSlideWidth === window.innerWidth || a.slideBleedWidth === a.childSlideWidth ? Em.run.later(function() {
                                Em.Logger.warn("re-positioned slide"), e(), a._animate(b), a.set("suppressSlideTransitions", !1)
                            }) : a.set("suppressSlideTransitions", !1)
                        }
                        a._animate(b), Em.run.next(a, function() {
                            a.$().addClass("enabled")
                        }), Em.run.cancel(a.slideTransitionTimeout), a.slideTransitionTimeout = Em.run.later(a, a._afterSlideTransition, d, a.SLIDE_TRANSITION_DURATION), $("body").add(document.documentElement).prop("scrollTop", 0), d.updateDocumentTitle(), a.$(".scroll:first").addBack(".scroll").each(function() {
                            new ScrollFix(a)
                        })
                    })
                })
            }
        }.observes("controller.currentTopicContentIndex"),
        swipeLeft: function() {
            $(document).trigger($.Event("keydown", {
                keyCode: 39
            }))
        },
        swipeRight: function() {
            $(document).trigger($.Event("keydown", {
                keyCode: 37
            }))
        },
        _animate: function(a) {
            var b = "rtl" === App.get("bundle.currentLocale.text-direction"), c = (this.childSlideWidth * a + this.slideBleedWidth) * (b ? 1 : - 1);
            this.set("inTransition", !0), this.$().css({
                transform: "translateX(%@px)".fmt(c)
            })
        },
        _afterSlideTransition: function(a) {
            var b = this;
            this._cleanUpClassNames(a), a.get("isContentLoadedPromise").then(function() {
                Em.run.next(b, function() {
                    this.set("inTransition", !1), a.$().addClass("active"), b.voiceOverFocusTimeout = setTimeout(function() {
                        b.focusedElement = $('[role="heading"]', a.$()).eq(0).css("outline", "none").focus()
                    }, 500)
                })
            }), this._startAutoAdvance()
        },
        _cleanUpClassNames: function(a) {
            $("body");
            this.get("childViews").forEach(function(b, c) {
                b !== a && b.$().removeClass("active")
            })
        },
        _startAutoAdvance: function() {
            var a = App.Router.router, b = this.get("controller.currentTopicContentIndex"), c = this.get("childViews.%@".fmt(b)), d = c.get("content"), e = d.get("isLanding"), f = this.get("childViews.%@".fmt(b + 1)) || this.get("childViews.0"), g = f.get("content");
            b === this.get("content.length") - 1 && this.set("controller.hasLooped", !0), Em.run.cancel(this.autoAdvanceInterval), Em.RSVP.allSettled([c.get("inDOMPromise"), f.get("inDOMPromise")]).then(Em.run.bind(this, function() {
                var b = d.get("duration") || (e ? this.LANDING_TIMING : this.DEFAULT_SLIDE_TIMING);
                this.get("controller.shouldAutoAdvance") && (this.autoAdvanceInterval = Em.run.later(this, function() {
                    a.transitionTo("topic", g.get("routeSlug")), this.isVoiceOverInstructionsComplete || Em.run.later(this, function() {
                        this._updateLiveRegion("$AUTOPLAY_INSTRUCTIONS$".loc()), this.isVoiceOverInstructionsComplete=!0
                    }, 2e3)
                }, b))
            }))
        },
        _pauseAutoAdvance: function() {
            Em.run.cancel(this.autoAdvanceInterval)
        },
        stopAutoAdvance: function() {
            this.get("controller.shouldAutoAdvance") && (Em.run.cancel(this.autoAdvanceInterval), this.get("controller") && (this.set("controller.shouldAutoAdvance", !1), Em.run.later(this, function() {
                this._updateLiveRegion("$AUTOPLAY_CANCEL$".loc())
            }, 1e3)))
        },
        _updateLiveRegion: function(a) {
            var b = $("#alerts");
            b.html(a), Em.run.later(this, function() {
                b.html("")
            }, 500)
        }
    })
}), define("topic/route", [], function() {
    return Em.Route.extend({
        model: function(a) {
            var b = App.get("book"), c = a.topic_id ? a.topic_id.split(":")[0]: "", d = b.modelForID(c) || b.get("landing"), e = this.get("galleryTopics");
            return e || (e = [], - 1 === b.toc.indexOf(b.landing) && e.push(b.landing), e = e.concat(b.topicsInList(b.toc)), this.set("galleryTopics", e)), this.set("selectedTopic", d), e
        },
        galleryTopics: null,
        selectedTopic: null,
        setControllerSelected: function() {
            var a = this.get("selectedTopic");
            App.set("currentTopic", a), this.get("controller") && this.set("controller.currentTopic", a)
        }.observes("selectedTopic"),
        setupController: function(a, b) {
            a.set("content", b), this.setControllerSelected();
            for (var c = this.get("controller.currentTopicContentIndex"), d = b.slice(0, c), e = b.slice(c), f = [e.shift()]; d.length || e.length;)
                e.length && f.push(e.shift()), d.length && f.push(d.pop());
            var g = Em.RSVP.resolve();
            f.forEach(function(a) {
                g = g["finally"](Em.run.bind(a, a.fetchTopicHTML))
            })
        }
    })
}), /*!
 * imagesLoaded PACKAGED v3.1.8
 * JavaScript is all like "You images are done yet or what?"
 * MIT License
 */
function() {
    function a() {}
    function b(a, b) {
        for (var c = a.length; c--;)
            if (a[c].listener === b)
                return c;
        return - 1
    }
    function c(a) {
        return function() {
            return this[a].apply(this, arguments)
        }
    }
    var d = a.prototype, e = this, f = e.EventEmitter;
    d.getListeners = function(a) {
        var b, c, d = this._getEvents();
        if ("object" == typeof a) {
            b = {};
            for (c in d)
                d.hasOwnProperty(c) && a.test(c) && (b[c] = d[c])
        } else
            b = d[a] || (d[a] = []);
        return b
    }, d.flattenListeners = function(a) {
        var b, c = [];
        for (b = 0; a.length > b; b += 1)
            c.push(a[b].listener);
        return c
    }, d.getListenersAsObject = function(a) {
        var b, c = this.getListeners(a);
        return c instanceof Array && (b = {}, b[a] = c), b || c
    }, d.addListener = function(a, c) {
        var d, e = this.getListenersAsObject(a), f = "object" == typeof c;
        for (d in e)
            e.hasOwnProperty(d)&&-1 === b(e[d], c) && e[d].push(f ? c : {
                listener: c,
                once: !1
            });
        return this
    }, d.on = c("addListener"), d.addOnceListener = function(a, b) {
        return this.addListener(a, {
            listener: b,
            once: !0
        })
    }, d.once = c("addOnceListener"), d.defineEvent = function(a) {
        return this.getListeners(a), this
    }, d.defineEvents = function(a) {
        for (var b = 0; a.length > b; b += 1)
            this.defineEvent(a[b]);
        return this
    }, d.removeListener = function(a, c) {
        var d, e, f = this.getListenersAsObject(a);
        for (e in f)
            f.hasOwnProperty(e) && (d = b(f[e], c), - 1 !== d && f[e].splice(d, 1));
        return this
    }, d.off = c("removeListener"), d.addListeners = function(a, b) {
        return this.manipulateListeners(!1, a, b)
    }, d.removeListeners = function(a, b) {
        return this.manipulateListeners(!0, a, b)
    }, d.manipulateListeners = function(a, b, c) {
        var d, e, f = a ? this.removeListener: this.addListener, g = a ? this.removeListeners: this.addListeners;
        if ("object" != typeof b || b instanceof RegExp)
            for (d = c.length; d--;)
                f.call(this, b, c[d]);
        else
            for (d in b)
                b.hasOwnProperty(d) && (e = b[d]) && ("function" == typeof e ? f.call(this, d, e) : g.call(this, d, e));
        return this
    }, d.removeEvent = function(a) {
        var b, c = typeof a, d = this._getEvents();
        if ("string" === c)
            delete d[a];
        else if ("object" === c)
            for (b in d)
                d.hasOwnProperty(b) && a.test(b) && delete d[b];
        else
            delete this._events;
        return this
    }, d.removeAllListeners = c("removeEvent"), d.emitEvent = function(a, b) {
        var c, d, e, f, g = this.getListenersAsObject(a);
        for (e in g)
            if (g.hasOwnProperty(e))
                for (d = g[e].length; d--;)
                    c = g[e][d], c.once===!0 && this.removeListener(a, c.listener), f = c.listener.apply(this, b || []), f === this._getOnceReturnValue() && this.removeListener(a, c.listener);
        return this
    }, d.trigger = c("emitEvent"), d.emit = function(a) {
        var b = Array.prototype.slice.call(arguments, 1);
        return this.emitEvent(a, b)
    }, d.setOnceReturnValue = function(a) {
        return this._onceReturnValue = a, this
    }, d._getOnceReturnValue = function() {
        return this.hasOwnProperty("_onceReturnValue") ? this._onceReturnValue : !0
    }, d._getEvents = function() {
        return this._events || (this._events = {})
    }, a.noConflict = function() {
        return e.EventEmitter = f, a
    }, "function" == typeof define && define.amd ? define("eventEmitter/EventEmitter", [], function() {
        return a
    }) : "object" == typeof module && module.exports ? module.exports = a : this.EventEmitter = a
}.call(this), function(a) {
    function b(b) {
        var c = a.event;
        return c.target = c.target || c.srcElement || b, c
    }
    var c = document.documentElement, d = function() {};
    c.addEventListener ? d = function(a, b, c) {
        a.addEventListener(b, c, !1)
    } : c.attachEvent && (d = function(a, c, d) {
        a[c + d] = d.handleEvent ? function() {
            var c = b(a);
            d.handleEvent.call(d, c)
        } : function() {
            var c = b(a);
            d.call(a, c)
        }, a.attachEvent("on" + c, a[c + d])
    });
    var e = function() {};
    c.removeEventListener ? e = function(a, b, c) {
        a.removeEventListener(b, c, !1)
    } : c.detachEvent && (e = function(a, b, c) {
        a.detachEvent("on" + b, a[b + c]);
        try {
            delete a[b + c]
        } catch (d) {
            a[b + c] = void 0
        }
    });
    var f = {
        bind: d,
        unbind: e
    };
    "function" == typeof define && define.amd ? define("eventie/eventie", f) : a.eventie = f
}(this), function(a, b) {
    "function" == typeof define && define.amd ? define("topic/imagesloaded.min", ["eventEmitter/EventEmitter", "eventie/eventie"], function(c, d) {
        return b(a, c, d)
    }) : "object" == typeof exports ? module.exports = b(a, require("wolfy87-eventemitter"), require("eventie")) : a.imagesLoaded = b(a, a.EventEmitter, a.eventie)
}(window, function(a, b, c) {
    function d(a, b) {
        for (var c in b)
            a[c] = b[c];
        return a
    }
    function e(a) {
        return "[object Array]" === m.call(a)
    }
    function f(a) {
        var b = [];
        if (e(a))
            b = a;
        else if ("number" == typeof a.length)
            for (var c = 0, d = a.length; d > c; c++)
                b.push(a[c]);
        else
            b.push(a);
        return b
    }
    function g(a, b, c) {
        if (!(this instanceof g))
            return new g(a, b);
        "string" == typeof a && (a = document.querySelectorAll(a)), this.elements = f(a), this.options = d({}, this.options), "function" == typeof b ? c = b : d(this.options, b), c && this.on("always", c), this.getImages(), j && (this.jqDeferred = new j.Deferred);
        var e = this;
        setTimeout(function() {
            e.check()
        })
    }
    function h(a) {
        this.img = a
    }
    function i(a) {
        this.src = a, n[a] = this
    }
    var j = a.jQuery, k = a.console, l = void 0 !== k, m = Object.prototype.toString;
    g.prototype = new b, g.prototype.options = {}, g.prototype.getImages = function() {
        this.images = [];
        for (var a = 0, b = this.elements.length; b > a; a++) {
            var c = this.elements[a];
            "IMG" === c.nodeName && this.addImage(c);
            var d = c.nodeType;
            if (d && (1 === d || 9 === d || 11 === d))
                for (var e = c.querySelectorAll("img"), f = 0, g = e.length; g > f; f++) {
                    var h = e[f];
                    this.addImage(h)
                }
            }
    }, g.prototype.addImage = function(a) {
        var b = new h(a);
        this.images.push(b)
    }, g.prototype.check = function() {
        function a(a, e) {
            return b.options.debug && l && k.log("confirm", a, e), b.progress(a), c++, c === d && b.complete(), !0
        }
        var b = this, c = 0, d = this.images.length;
        if (this.hasAnyBroken=!1, !d)
            return void this.complete();
        for (var e = 0; d > e; e++) {
            var f = this.images[e];
            f.on("confirm", a), f.check()
        }
    }, g.prototype.progress = function(a) {
        this.hasAnyBroken = this.hasAnyBroken ||!a.isLoaded;
        var b = this;
        setTimeout(function() {
            b.emit("progress", b, a), b.jqDeferred && b.jqDeferred.notify && b.jqDeferred.notify(b, a)
        })
    }, g.prototype.complete = function() {
        var a = this.hasAnyBroken ? "fail": "done";
        this.isComplete=!0;
        var b = this;
        setTimeout(function() {
            if (b.emit(a, b), b.emit("always", b), b.jqDeferred) {
                var c = b.hasAnyBroken ? "reject": "resolve";
                b.jqDeferred[c](b)
            }
        })
    }, j && (j.fn.imagesLoaded = function(a, b) {
        var c = new g(this, a, b);
        return c.jqDeferred.promise(j(this))
    }), h.prototype = new b, h.prototype.check = function() {
        var a = n[this.img.src] || new i(this.img.src);
        if (a.isConfirmed)
            return void this.confirm(a.isLoaded, "cached was confirmed");
        if (this.img.complete && void 0 !== this.img.naturalWidth)
            return void this.confirm(0 !== this.img.naturalWidth, "naturalWidth");
        var b = this;
        a.on("confirm", function(a, c) {
            return b.confirm(a.isLoaded, c), !0
        }), a.check()
    }, h.prototype.confirm = function(a, b) {
        this.isLoaded = a, this.emit("confirm", this, b)
    };
    var n = {};
    return i.prototype = new b, i.prototype.check = function() {
        if (!this.isChecked) {
            var a = new Image;
            c.bind(a, "load", this), c.bind(a, "error", this), a.src = this.src, this.isChecked=!0
        }
    }, i.prototype.handleEvent = function(a) {
        var b = "on" + a.type;
        this[b] && this[b](a)
    }, i.prototype.onload = function(a) {
        this.confirm(!0, "onload"), this.unbindProxyEvents(a)
    }, i.prototype.onerror = function(a) {
        this.confirm(!1, "onerror"), this.unbindProxyEvents(a)
    }, i.prototype.confirm = function(a, b) {
        this.isConfirmed=!0, this.isLoaded = a, this.emit("confirm", this, b)
    }, i.prototype.unbindProxyEvents = function(a) {
        c.unbind(a.target, "load", this), c.unbind(a.target, "error", this)
    }, g
}), define("topic/topic-model-mixin", ["shared/browser", "topic/imagesloaded.min"], function(a, b) {
    return Em.Mixin.create({
        imagePromises: [],
        isAsync: !0,
        fetchTopicHTML: function() {
            if (this.get("isLoaded"))
                return this.get("templatePromise");
            var a = this;
            return new Em.RSVP.Promise(function(b, c) {
                a._super()["finally"](function() {
                    Em.RSVP.allSettled(a.get("imagePromises"))["finally"](b, c)
                })
            })
        },
        preProcessAsDOM: function(b) {
            var c = b.attr("id");
            b = this._super(b), b.attr("id", c).find("h1[id=%@]".fmt(c)).attr("id", null);
            var d = b.find(".learn-more").eq(0);
            d && d.length > 0 && (d.detach(), d.prepend('<div class="close-button" />'), b.children().wrapAll('<div class="slide-main" />'), b.prepend(d)), b.find(".learn-more-link").each(function() {
                $(this).append('<span class="learn-more-link-icon"></span>')
            });
            var e = /help:anchor='(.+)' bookID='com.apple.machelp'/, f = function() {
                if (a.get("name") && "safari" === a.get("name") && a.get("os")) {
                    var b = a.get("os").split(".").map(function(a) {
                        return parseInt(a, 10)
                    }), c = b[0], d = b[1];
                    if (c >= 10 && d >= 10)
                        return !0
                }
                return !1
            };
            return b.find("a[href]").each(function() {
                var a = $(this).attr("href");
                if (a.match(/^http/) || a.match(/^x-help/)) {
                    var b = $(this).text().split(" ");
                    if (b.length > 0) {
                        var c = b[b.length - 1];
                        b[b.length - 1] = '<span class="nb">' + c + '<span class="link-external"></span></span>', $(this).html(b.join(" "))
                    }
                } else if (!f()) {
                    var d = e.exec(a);
                    if (d && d.length > 1) {
                        var g = d[1];
                        $(this).attr("href", "http://help.apple.com/machelp/mac/10.10/#" + g), $(this).attr("target", "_blank")
                    }
                }
            }), b.find("header h1").attr("role", "heading").attr("tabindex", - 1), this.set("imagePromises", [Em.RSVP.Promise.cast(b.find("img").imagesLoaded())]), b
        }
    })
}), define("precompiled/nav/view", [], function() {
    return Em.Handlebars.template(function(a, b, c, d, e) {
        function f(a, b) {
            var d, e = "";
            return b.buffer.push("\n  "), d = c["if"].call(a, "prev", {
                hash: {},
                hashTypes: {},
                hashContexts: {},
                inverse: p.noop,
                fn: p.program(2, g, b),
                contexts: [a],
                types: ["ID"],
                data: b
            }), (d || 0 === d) && b.buffer.push(d), b.buffer.push("\n"), e
        }
        function g(a, b) {
            var d, e, f, g = "";
            return b.buffer.push("\n    "), e = c["link-to"] || a && a["link-to"], f = {
                hash: {
                    ariaRole: "button",
                    classNameBindings: ":paddle-nav :arrow :prev"
                },
                hashTypes: {
                    ariaRole: "STRING",
                    classNameBindings: "STRING"
                },
                hashContexts: {
                    ariaRole: a,
                    classNameBindings: a
                },
                inverse: p.noop,
                fn: p.program(3, h, b),
                contexts: [a, a],
                types: ["STRING", "ID"],
                data: b
            }, d = e ? e.call(a, "topic", "prev.routeSlug", f) : q.call(a, "link-to", "topic", "prev.routeSlug", f), (d || 0 === d) && b.buffer.push(d), b.buffer.push("\n  "), g
        }
        function h(a, b) {
            var d, e = "";
            return b.buffer.push("\n    	<span></span><b>"), d = c._triageMustache.call(a, "App.previousTopicLabel", {
                hash: {},
                hashTypes: {},
                hashContexts: {},
                contexts: [a],
                types: ["ID"],
                data: b
            }), (d || 0 === d) && b.buffer.push(d), b.buffer.push("</b>\n    "), e
        }
        function i(a, b) {
            var d, e, f, g = "";
            return b.buffer.push('\n		<li role="presentation">\n			<span aria-hidden="true">'), d = c._triageMustache.call(a, "name", {
                hash: {},
                hashTypes: {},
                hashContexts: {},
                contexts: [a],
                types: ["ID"],
                data: b
            }), (d || 0 === d) && b.buffer.push(d), b.buffer.push("</span>"), e = c["link-to"] || a && a["link-to"], f = {
                hash: {
                    ariaRole: "radio"
                },
                hashTypes: {
                    ariaRole: "STRING"
                },
                hashContexts: {
                    ariaRole: a
                },
                inverse: p.noop,
                fn: p.program(6, j, b),
                contexts: [a, a],
                types: ["STRING", "ID"],
                data: b
            }, d = e ? e.call(a, "topic", "routeSlug", f) : q.call(a, "link-to", "topic", "routeSlug", f), (d || 0 === d) && b.buffer.push(d), b.buffer.push("\n		</li>\n	"), g
        }
        function j(a, b) {
            var d, e = "";
            return b.buffer.push("<b>"), d = c._triageMustache.call(a, "name", {
                hash: {},
                hashTypes: {},
                hashContexts: {},
                contexts: [a],
                types: ["ID"],
                data: b
            }), (d || 0 === d) && b.buffer.push(d), b.buffer.push("</b>"), e
        }
        function k(a, b) {
            var d, e = "";
            return b.buffer.push("\n  "), d = c["if"].call(a, "next", {
                hash: {},
                hashTypes: {},
                hashContexts: {},
                inverse: p.noop,
                fn: p.program(9, l, b),
                contexts: [a],
                types: ["ID"],
                data: b
            }), (d || 0 === d) && b.buffer.push(d), b.buffer.push("\n"), e
        }
        function l(a, b) {
            var d, e, f, g = "";
            return b.buffer.push("\n    "), e = c["link-to"] || a && a["link-to"], f = {
                hash: {
                    ariaRole: "button",
                    classNameBindings: ":paddle-nav :arrow :next"
                },
                hashTypes: {
                    ariaRole: "STRING",
                    classNameBindings: "STRING"
                },
                hashContexts: {
                    ariaRole: a,
                    classNameBindings: a
                },
                inverse: p.noop,
                fn: p.program(10, m, b),
                contexts: [a, a],
                types: ["STRING", "ID"],
                data: b
            }, d = e ? e.call(a, "topic", "next.routeSlug", f) : q.call(a, "link-to", "topic", "next.routeSlug", f), (d || 0 === d) && b.buffer.push(d), b.buffer.push("\n  "), g
        }
        function m(a, b) {
            var d, e = "";
            return b.buffer.push("\n    	<b>"), d = c._triageMustache.call(a, "App.nextTopicLabel", {
                hash: {},
                hashTypes: {},
                hashContexts: {},
                contexts: [a],
                types: ["ID"],
                data: b
            }), (d || 0 === d) && b.buffer.push(d), b.buffer.push("</b><span></span>\n    "), e
        }
        this.compilerInfo = [4, ">= 1.0.0"], c = this.merge(c, Em.Handlebars.helpers), e = e || {};
        var n, o = "", p = this, q = c.helperMissing;
        return n = c["with"].call(b, "App.currentTopic", {
            hash: {},
            hashTypes: {},
            hashContexts: {},
            inverse: p.noop,
            fn: p.program(1, f, e),
            contexts: [b],
            types: ["ID"],
            data: e
        }), (n || 0 === n) && e.buffer.push(n), e.buffer.push('\n<ul class="dot-nav" role="radiogroup">\n	'), n = c.each.call(b, "App.navTopics", {
            hash: {},
            hashTypes: {},
            hashContexts: {},
            inverse: p.noop,
            fn: p.program(5, i, e),
            contexts: [b],
            types: ["ID"],
            data: e
        }), (n || 0 === n) && e.buffer.push(n), e.buffer.push("\n</ul>\n"), n = c["with"].call(b, "App.currentTopic", {
            hash: {},
            hashTypes: {},
            hashContexts: {},
            inverse: p.noop,
            fn: p.program(8, k, e),
            contexts: [b],
            types: ["ID"],
            data: e
        }), (n || 0 === n) && e.buffer.push(n), e.buffer.push("\n"), o
    })
}), define("nav/view", ["precompiled/nav/view", "shared/computed", "shared/mixin/space-click"], function(a, b, c) {
    return Em.View.extend(c, {
        template: a,
        tagName: "nav",
        ariaRole: "navigation",
        ariaHidden: b.invertedTruthString("isEnabled"),
        attributeBindings: ["style", "ariaHidden:aria-hidden"],
        classNameBindings: ["isEnabled:is-enabled"],
        isEnabled: function() {
            return - 1 !== App.book.toc.indexOf(App.currentTopic)
        }.property("App.currentTopic"),
        didInsertElement: function() {
            this.updateDotNav()
        },
        updateDotNav: function() {
            var a = App.get("currentTopic"), b = App.get("navTopics"), c = Math.max(0, b.indexOf(a));
            this.$(".dot-nav li a").attr("aria-checked", "false").eq(c).attr("aria-checked", "true")
        }.observes("App.currentTopic")
    })
}), define("translations", [], function() {
    var a = {
        ar: {
            $GLOSSARY_CLOSE_BUTTON$: "إغلاق",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "التالي",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "السابق",
            $CONNECT_TO_INTERNET$: '<p>تأكد من الاتصال بالإنترنت. للحصول على مساعدة، اختر قائمة Apple > تفضيلات النظام، وانقر على الشبكة، ثم انقر على "ساعدني".</p><p>إذا كنت متصلاً بالإنترنت، ولا يظهر المحتوى بعد، فحاول مرة أخرى لاحقًا.</p>',
            $AUTOPLAY_INSTRUCTIONS$: "لإلغاء التمرير التلقائي المتقدم، اضغط على مفتاح الهروب، أو اضغط على أسهم اليسار واليمين للتنقل بين الشرائح.",
            $AUTOPLAY_CANCEL$: "تم إلغاء التمرير التلقائي المتقدم، اضغط على أسهم اليسار واليمين للتنقل بين الشرائح."
        },
        ca: {
            $GLOSSARY_CLOSE_BUTTON$: "Tancar",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Següent",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Anterior",
            $CONNECT_TO_INTERNET$: "<p>Comproveu que teniu connexió a Internet. Per obtenir ajuda sobre com establir connexió, seleccioneu el menú Apple > Preferències del Sistema i feu clic a Xarxa i, després, a Assistent.</p><p>Si esteu connectat a Internet però el contingut no apareix, proveu-ho de nou més endavant.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Per cancel·lar l’avançament automàtic de diapositives, premeu la tecla Escapada o premeu les fletxes esquerra i dreta per navegar entre les diapositives.",
            $AUTOPLAY_CANCEL$: "Avançament automàtic de diapositives cancel·lat. Premeu les fletxes esquerra i dreta per navegar entre les diapositives."
        },
        cs: {
            $GLOSSARY_CLOSE_BUTTON$: "Zavřít",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Další",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Předchozí",
            $CONNECT_TO_INTERNET$: "<p>Ujistěte se, že jste připojeni k Internetu. Chcete-li nápovědu pro připojení, použijte příkaz Předvolby systému z nabídky Apple, klikněte na Síť a poté na „Průvodce“.</p><p>Jste-li připojeni k Internetu, avšak obsah se přesto nezobrazuje, zkuste to znovu později.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Chcete-li zrušit automatické posouvání na další snímky, stiskněte klávesu Esc nebo přejděte na jiný snímek stisknutím šipky doleva či doprava.",
            $AUTOPLAY_CANCEL$: "Automatické posouvání na další snímky je zrušeno. Stisknutím šipky doleva či doprava můžete přecházet mezi snímky."
        },
        da: {
            $GLOSSARY_CLOSE_BUTTON$: "Luk",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Næste",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Forrige",
            $CONNECT_TO_INTERNET$: "<p>Sørg for, at der er oprettet forbindelse til internettet. Vælg Apple > Systemindstillinger, klik på Netværk, og klik derefter på “Hjælp mig” for at få hjælp med at oprette forbindelse.</p><p>Hvis der er forbindelse til internettet, og indholdet stadig ikke vises, kan du prøve igen senere.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Hvis du vil annullere automatisk fremrykning, så tryk på knappen Esc, eller tryk på højre- eller venstrepilen for at skifte mellem lysbilleder.",
            $AUTOPLAY_CANCEL$: "Automatisk fremrykning af lysbilleder er annulleret. Tryk på højre- og venstrepilen for at skifte mellem lysbilleder."
        },
        de: {
            $GLOSSARY_CLOSE_BUTTON$: "Schließen",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Weiter",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Zurück",
            $CONNECT_TO_INTERNET$: "<p>Vergewissern Sie sich, dass eine Verbindung zum Internet besteht. Wählen Sie „Apple“ > „Systemeinstellungen“, klicken Sie auf „Netzwerk“ und dann auf „Assistent“, wenn Sie Hilfe benötigen.</p><p>Wenn Sie mit dem Internet verbunden sind, den Inhalt aber dennoch nicht sehen können, versuchen Sie es zu einem späteren Zeitpunkt erneut.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Drücken Sie auf die ESC-Taste, um das automatische Abspielen der Diashow zu beenden, oder drücken Sie auf die Pfeiltasten nach rechts bzw. links, um von einer Folie zur nächsten bzw. vorherigen zu navigieren.",
            $AUTOPLAY_CANCEL$: "Das automatische Abspielen der Diashow wurde beendet. Drücken Sie auf die Pfeiltasten nach rechts bzw. links, um von einer Folie zur nächsten bzw. vorherigen zu navigieren."
        },
        el: {
            $GLOSSARY_CLOSE_BUTTON$: "Κλείσιμο",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Επόμενο",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Προηγούμενο",
            $CONNECT_TO_INTERNET$: "<p>Βεβαιωθείτε ότι είστε συνδεδεμένοι στο Διαδίκτυο. Για βοήθεια με τη σύνδεση, επιλέξτε το μενού Apple > «Προτιμήσεις συστήματος», κάντε κλικ στο «Δίκτυο» και μετά στο «Θέλω βοήθεια».</p><p>Εάν συνδεθείτε στο Διαδίκτυο και το περιεχόμενο δεν εμφανίζεται ακόμη, δοκιμάστε ξανά αργότερα.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Για να ακυρώσετε την αυτόματη προώθηση των διαφανειών, πατήστε το πλήκτρο Escape ή πατήστε τα πλήκτρα αριστερού και δεξιού βέλους για να πλοηγηθείτε μεταξύ των σλάιντ.",
            $AUTOPLAY_CANCEL$: "Η αυτόματη προώθηση σλάιντ ακυρώθηκε. Πατήστε τα πλήκτρα αριστερού και δεξιού βέλους για να πλοηγηθείτε μεταξύ των σλάιντ."
        },
        en: {
            $GLOSSARY_CLOSE_BUTTON$: "Close",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Next",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Previous",
            $CONNECT_TO_INTERNET$: "<p>Make sure you’re connected to the Internet. For help connecting, choose Apple menu > System Preferences, click Network, and click “Assist me.”</p><p>If you’re connected to the Internet, and the content still doesn’t appear, try again later.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "To cancel slide auto-advance, press the Escape key, or press left and right arrows to navigate between slides.",
            $AUTOPLAY_CANCEL$: "Slide auto-advance cancelled. Press left and right arrows to navigate between slides."
        },
        es: {
            $GLOSSARY_CLOSE_BUTTON$: "Cerrar",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Siguiente",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Anterior",
            $CONNECT_TO_INTERNET$: "<p>Asegúrese de que está conectado a Internet. Si necesita ayuda para conectarse, seleccione menú Apple > Preferencias del Sistema, haga clic en Red y, a continuación, haga clic en Asistente.</p><p>Si ya está conectado a Internet pero no se muestra el contenido del tema, inténtelo de nuevo más tarde.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Para cancelar el avance automático de las secciones, pulsa la tecla Esc, o pulsa la flecha derecha y la flecha izquierda para explorar las diferentes secciones.",
            $AUTOPLAY_CANCEL$: "Avance automático de las secciones cancelado. Pulsa la flecha derecha y la flecha izquierda para explorar las diferentes secciones."
        },
        "es-mx": {
            $GLOSSARY_CLOSE_BUTTON$: "Cerrar",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Siguiente",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Anterior",
            $CONNECT_TO_INTERNET$: "<p>Asegúrese de que está conectado a Internet. Si necesita ayuda para conectarse, seleccione menú Apple > Preferencias del Sistema, haga clic en Red y, a continuación, haga clic en Asistente.</p><p>Si ya está conectado a Internet y aun así no se muestra el contenido del tema, inténtelo de nuevo más tarde.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Para cancelar el avance automático de las secciones, pulsa la tecla Esc, o pulsa la flecha derecha y la flecha izquierda para explorar las diferentes secciones.",
            $AUTOPLAY_CANCEL$: "Avance automático de las secciones cancelado. Pulsa la flecha derecha y la flecha izquierda para explorar las diferentes secciones."
        },
        fi: {
            $GLOSSARY_CLOSE_BUTTON$: "Sulje",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Seuraava",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Edellinen",
            $CONNECT_TO_INTERNET$: "<p>Varmista, että olet yhteydessä internetiin. Jos tarvitset apua yhteyden muodostamisessa, valitse Omenavalikko > Järjestelmäasetukset, osoita Verkko ja osoita Avusta.</p><p>Jos olet yhteydessä internetiin, mutta sisältö ei silti tule näkyviin, yritä myöhemmin uudelleen.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Kumoa automaattinen seuraavaan diaan siirtyminen painamalla esc-näppäintä tai liiku diojen välillä painamalla vasenta ja oikeaa nuolinäppäintä.",
            $AUTOPLAY_CANCEL$: "Automaattinen seuraavaan diaan siirtyminen kumottu. Liiku diojen välillä painamalla vasenta ja oikeaa nuolinäppäintä."
        },
        fr: {
            $GLOSSARY_CLOSE_BUTTON$: "Fermer",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Suivant",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Précédent",
            $CONNECT_TO_INTERNET$: "<p>Assurez-vous d’être connecté à Internet. Pour obtenir de l’aide pour vous connecter, choisissez le menu Pomme > Préférences Système, cliquez sur Réseau puis sur Assistant.</p><p>Si vous êtes connecté à Internet, mais que le contenu ne s’affiche toujours pas, réessayez ultérieurement.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Pour annuler le défilement automatique des diapositives, appuyez sur la touche esc, ou bien sur les flèches droite et gauche pour naviguer entre elles.",
            $AUTOPLAY_CANCEL$: "Défilement automatique des diapositives annulé. Appuyez sur les flèches droite et gauche pour naviguer entre elles."
        },
        he: {
            $GLOSSARY_CLOSE_BUTTON$: "סגור",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "הבא",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "הקודם",
            $CONNECT_TO_INTERNET$: "<p>ודא/י שהינך מחובר/ת לאינטרנט. לעזרה בנושא התחברות, בחר/י תפריט Apple > ״העדפות המערכת״, לחץ/י על ״רשת״ ובחרי ״עזור לי״.</p><p>אם הינך מחובר/ת לאינטרנט, ובכל זאת התוכן אינו מופיע, נסה/י שוב מאוחר יותר.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "על-מנת לבטל התקדמות אוטומטית של שקופיות, הקש/י על Escape או הקש/י על החצים שמאלה וימינה כדי לנווט בין שקופיות.",
            $AUTOPLAY_CANCEL$: "ההתקדמות האוטומטית של שקופיות בוטלה. הקש/י על החצים שמאלה וימינה כדי לנווט בין שקופיות."
        },
        hr: {
            $GLOSSARY_CLOSE_BUTTON$: "Zatvori",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Sljedeće",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Prethodno",
            $CONNECT_TO_INTERNET$: '<p>Provjerite jeste li spojeni na internet. Za pomoć pri spajanju odaberite Apple izbornik > Postavke sustava, kliknite na Mreža i zatim na "Pomoć".</p><p>Ako ste spojeni na internet i sadržaj se svejedno ne pojavljuje, pokušajte ponovno kasnije.</p>',
            $AUTOPLAY_INSTRUCTIONS$: "Za otkazivanje automatskog listanja slajdova, pritisnite tipku Escape ili pritisnite strelice ulijevo i udesno za navigiranje među slajdovima.",
            $AUTOPLAY_CANCEL$: "Automatsko listanje slajdova otkazano. Pritisnite strelice ulijevo i udesno za navigiranje među slajdovima."
        },
        hu: {
            $GLOSSARY_CLOSE_BUTTON$: "Bezárás",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Következő",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Előző",
            $CONNECT_TO_INTERNET$: "<p>Győződjön meg róla, hogy csatlakozik az internethez. Ha segítségre van szüksége, válassza az Apple menü > Rendszerbeállítások menüpontot, kattintson a Hálózat, majd a „Segítség kérése” elemre.</p><p>Ha csatlakozik az internethez, és a tartalom továbbra sem jelenik meg, próbálja meg később.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Ha le szeretné állítani az automatikus léptetést, nyomja le az Esc billentyűt, illetve a diák közötti léptetéshez nyomja le a bal vagy jobb nyílbillentyűt.",
            $AUTOPLAY_CANCEL$: "Az automatikus léptetés leállítva. A diák közötti léptetéshez nyomja le a bal vagy jobb nyílbillentyűt."
        },
        id: {
            $GLOSSARY_CLOSE_BUTTON$: "Tutup",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Berikutnya",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Sebelumnya",
            $CONNECT_TO_INTERNET$: "<p>Pastikan Anda terhubung ke Internet. Untuk bantuan dalam menghubungkan, pilih menu Apple > Preferensi Sistem, klik Jaringan, dan klik “Bantu saya.”</p><p>Jika Anda terhubung ke Internet, dan konten masih tidak muncul, coba lagi nanti.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Untuk membatalkan lanjut-otomatis slide, tekan tombol Escape, atau tekan panah kiri dan kanan untuk menavigasi di antara slide.",
            $AUTOPLAY_CANCEL$: "Lanjut-otomatis slide dibatalkan. Tekan panah kiri dan kanan untuk menavigasi di antara slide."
        },
        it: {
            $GLOSSARY_CLOSE_BUTTON$: "Chiudi",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Successivo",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Precedente",
            $CONNECT_TO_INTERNET$: "<p>Assicurati di essere connesso a Internet. Per assistenza su come configurare la connessione a Internet, scegli menu Apple > Preferenze di Sistema, fai clic su Network, quindi su “Aiutami”.</p><p>Se sei connesso a Internet, ma non puoi visualizzare il contenuto, riprova più tardi.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Per annullare l'avanzamento automatico delle diapositive, premi il tasto Esc o premi le frecce a destra e a sinistra per navigare tra le diapositive.",
            $AUTOPLAY_CANCEL$: "Avanzamento automatico delle diapositive annullato. Premi le frecce a destra e a sinistra per navigare tra le diapositive."
        },
        ja: {
            $NO_WORD_BREAKS$: !0,
            $GLOSSARY_CLOSE_BUTTON$: "閉じる",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "次へ",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "前へ",
            $CONNECT_TO_INTERNET$: "<p>インターネットに接続していることを確認してください。接続について調べたいときは、アップルメニュー＞「システム環境設定」と選択し、「ネットワーク」をクリックしてから「アシスタント」をクリックします。</p><p>インターネットに接続しているのにコンテンツが表示されない場合は、後でやり直してください。</p>",
            $AUTOPLAY_INSTRUCTIONS$: "自動スライド移動機能は esc キーを押すとキャンセルできます。また、左矢印キー／右矢印キーを押すと、前後のスライドに移動できます。",
            $AUTOPLAY_CANCEL$: "自動スライド移動機能をキャンセルしました。前後のスライドに移動するには、左矢印キー／右矢印キーを押してください。"
        },
        ko: {
            $GLOSSARY_CLOSE_BUTTON$: "닫기",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "다음",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "이전",
            $CONNECT_TO_INTERNET$: "<p>인터넷에 연결되어 있는지 확인하십시오. 연결에 대한 도움말은 Apple 메뉴 > 시스템 환경설정을 선택하고 네트워크를 클릭한 다음 “도와주세요”를 클릭하십시오.</p><p>인터넷에 연결되어 있지만 해당 콘텐츠가 여전히 나타나지 않는 경우 나중에 다시 시도해보십시오.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "슬라이드 자동 넘김을 취소하려면 Escape 키 또는 왼쪽 및 오른쪽 화살표를 눌러 슬라이드를 탐색하십시오.",
            $AUTOPLAY_CANCEL$: "슬라이드 자동 넘김이 취소되었습니다. 왼쪽 및 오른쪽 화살표를 눌러 슬라이드를 탐색하십시오."
        },
        ms: {
            $GLOSSARY_CLOSE_BUTTON$: "Tutup",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Seterusnya",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Sebelumnya",
            $CONNECT_TO_INTERNET$: "<p>Pastikan anda disambungkan ke Internet. Untuk bantuan sambungan, pilih menu Apple > Keutamaan Sistem, klik Rangkaian, dan klik “Bantu saya.”</p><p>Jika anda disambungkan ke Internet, dan kandungan masih tidak muncul, cuba lagi nanti.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Untuk membatalkan automaju slaid, tekan kekunci Escape, atau tekan anak panah kiri dan kanan untuk menavigasi antara slaid.",
            $AUTOPLAY_CANCEL$: "Automaju slaid dibatalkan. Tekan anak panah kiri dan kanan untuk menavigasi antara slaid."
        },
        nb: {
            $GLOSSARY_CLOSE_BUTTON$: "Lukk",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Neste",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Forrige",
            $CONNECT_TO_INTERNET$: "<p>Kontroller at du er koblet til Internett. Hvis du trenger hjelp til å koble til, velger du Apple-menyen > Systemvalg, klikker på Nettverk og klikker på «Hjelp meg».</p><p>Hvis du er koblet til Internett, men innholdet likevel ikke vises, prøver du igjen senere.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Avbryt automatisk flytting til neste side ved å trykke på Escape-tasten, eller trykk på pil høyre eller pil venstre for å navigere mellom sidene.",
            $AUTOPLAY_CANCEL$: "Automatisk flytting til neste side er avbrutt. Trykk på pil høyre eller pil venstre for å navigere mellom sidene."
        },
        nl: {
            $GLOSSARY_CLOSE_BUTTON$: "Sluit",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Volgende",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Vorige",
            $CONNECT_TO_INTERNET$: "<p>Controleer of er verbinding is met het internet. Als u hulp nodig hebt, kiest u Apple-menu > 'Systeemvoorkeuren' en klikt u vervolgens op 'Netwerk' en 'Assistentie'.</p><p>Als u verbinding hebt met het internet en de inhoud nog steeds niet wordt weergegeven, probeert u het later nog een keer.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Om automatisch navigeren te annuleren, drukt u op de Escape-toets of drukt u op de toets pijl-links of pijl-rechts om van de ene naar de andere dia te gaan.",
            $AUTOPLAY_CANCEL$: "Automatisch navigeren geannuleerd. Druk op de toets pijl-links of pijl-rechts om van de ene naar de andere dia te gaan."
        },
        pl: {
            $GLOSSARY_CLOSE_BUTTON$: "Zamknij",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Następny",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Poprzedni",
            $CONNECT_TO_INTERNET$: "<p>Upewnij się, że działa połączenie komputera z Internetem. Jeśli potrzebujesz pomocy dotyczącej łączenia z Internetem, wybierz polecenie menu Apple > Preferencje systemowe, kliknij w Sieć, a następnie kliknij w Pomóż mi.</p><p>Jeśli komputer jest połączony z Internetem, a żądana strona nadal nie jest dostępna, spróbuj ponownie później.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Aby wyłączyć automatyczne przechodzenie do następnego slajdu, naciśnij klawisz Escape lub zmieniaj slajdy klawiszami ze strzałkami w prawo i w lewo.",
            $AUTOPLAY_CANCEL$: "Automatyczne przechodzenie do następnego slajdu zostało wyłączone. Zmieniaj slajdy klawiszami ze strzałkami w prawo i w lewo."
        },
        pt: {
            $GLOSSARY_CLOSE_BUTTON$: "Fechar",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Seguinte",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Anterior",
            $CONNECT_TO_INTERNET$: "<p>Certifique-se de que você está conectado à Internet. Para obter ajuda sobre a conexão, selecione o menu Apple > Preferências do Sistema, clique em Rede e escolha “Obter auxílio”.</p><p>Se estiver conectado à Internet e ainda assim o conteúdo não aparecer, tente novamente mais tarde.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Para cancelar o avanço automático de slides, pressione a tecla ESC ou pressione as teclas de seta à esquerda e seta à direita para navegar entre os slides.",
            $AUTOPLAY_CANCEL$: "O avanço automático de slides foi cancelado. Pressione as teclas de seta à direita e seta à esquerda para navegar entre os slides."
        },
        "pt-pt": {
            $GLOSSARY_CLOSE_BUTTON$: "Fechar",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Seguinte",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Anterior",
            $CONNECT_TO_INTERNET$: "<p>Certifique-se de que está ligado à Internet. Para obter ajuda sobre como estabelecer ligação, seleccione o menu Apple > Preferências do Sistema, clique em Rede e depois em Assistente.</p><p>Caso esteja ligado à Internet e o conteúdo continue a não aparecer, volte a tentar mais tarde.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Para cancelar o avanço automático dos diapositivos, prima a tecla Escape, ou prima as setas para a esquerda e para a direita para navegar pelos diapositivos.",
            $AUTOPLAY_CANCEL$: "Avanço automático dos diapositivos cancelado. Prima as setas para a esquerda e para a direita para navegar pelos diapositivos."
        },
        ro: {
            $GLOSSARY_CLOSE_BUTTON$: "Închide",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Înainte",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Înapoi",
            $CONNECT_TO_INTERNET$: "<p>Asigurați-vă că dispuneți de o conexiune la Internet. Pentru ajutor referitor la conectare, selectați meniul Apple > Preferințe sistem, faceți clic pe Rețea și clic pe “Doresc asistență”.</p><p>Dacă dispuneți de o conexiune la Internet, însă conținutul tot nu apare, reîncercați mai târziu.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Pentru a opri avansarea automată a diapozitivelor, apăsați tasta Escape sau apăsați săgețile spre stânga și spre dreapta pentru a naviga între diapozitive.",
            $AUTOPLAY_CANCEL$: "Avansarea automată a diapozitivelor a fost oprită. Apăsați săgețile spre stânga și spre dreapta pentru a naviga între diapozitive."
        },
        ru: {
            $GLOSSARY_CLOSE_BUTTON$: "Закрыть",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Далее",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Назад",
            $CONNECT_TO_INTERNET$: "<p>Проверьте подключение к сети Интернет. Для получения помощи по подключению выберите меню Apple > «Системные настройки», откройте панель «Сеть» и нажмите кнопку «Ассистент».</p><p>Если интернет-подключение активно, а содержание все равно не отображается, повторите попытку позже.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Чтобы отменить автоматический просмотр слайдов, нажмите кнопку Escape или стрелки влево и вправо для перемещения от слайда к слайду.",
            $AUTOPLAY_CANCEL$: "Автоматический просмотр слайдов отменён. Нажмите стрелки влево и вправо для перемещения от слайда к слайду."
        },
        sk: {
            $GLOSSARY_CLOSE_BUTTON$: "Zatvoriť",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Ďalšie",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Predošlé",
            $CONNECT_TO_INTERNET$: "<p>Uistite sa, že máte pripojenie na internet. Pre pomoc s pripojením vyberte menu Apple > Systémové nastavenia, kliknite na Sieť a potom na Asistent.</p><p>Ak máte pripojenie na internet a napriek tomu sa obsah nezobrazuje, skúste to znovu neskôr.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Ak chcete zrušiť automatické posúvanie snímok, stlačte kláves Escape alebo prechádzajte medzi snímkami pomocou šípok doľava a doprava.",
            $AUTOPLAY_CANCEL$: "Automatické posúvanie snímok bolo zrušené. Prechádzajte medzi snímkami pomocou kláves šípok doľava a doprava."
        },
        sv: {
            $GLOSSARY_CLOSE_BUTTON$: "Stäng",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Nästa",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Föregående",
            $CONNECT_TO_INTERNET$: "<p>Kontrollera att datorn är ansluten till internet. Om du vill ha hjälp med att ansluta väljer du Apple-menyn > Systeminställningar, klickar på Nätverk och sedan på ”Hjälp mig”.</p><p>Om du är ansluten till internet och materialet fortfarande inte visas försöker du igen senare.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Du kan avbryta den automatiska uppspelningen genom att trycka på escape-tangenten eller trycka på höger- och vänsterpilen för att bläddra mellan sidor.",
            $AUTOPLAY_CANCEL$: "Automatisk uppspelning avbruten. Tryck på höger- och vänsterpilen för att bläddra mellan sidor."
        },
        th: {
            $NO_WORD_BREAKS$: !0,
            $GLOSSARY_CLOSE_BUTTON$: "ปิด",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "ถัดไป",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "ก่อนหน้า",
            $CONNECT_TO_INTERNET$: "<p>ตรวจสอบว่าคุณได้เชื่อมต่ออินเทอร์เน็ตแล้ว สำหรับความช่วยเหลือในการเชื่อมต่อ ให้เลือกเมนู Apple > การตั้งค่าระบบ คลิก เครือข่าย แล้วคลิก “ช่วยเหลือฉัน”</p><p>หากคุณเชื่อมต่ออินเทอร์เน็ตแล้ว แต่เนื้อหายังคงไม่ปรากฏ ให้ลองอีกครั้งในภายหลัง</p>",
            $AUTOPLAY_INSTRUCTIONS$: "ในการยกเลิกการเลื่อนสไลด์อัตโนมัติ ให้กดปุ่ม Escape หรือกดลูกศรซ้ายและขวาเพื่อนำทางระหว่างสไลด์",
            $AUTOPLAY_CANCEL$: "ยกเลิกการเลื่อนสไลด์อัตโนมัติแล้ว กดลูกศรซ้ายและขวาเพื่อนำทางระหว่างสไลด์"
        },
        tr: {
            $GLOSSARY_CLOSE_BUTTON$: "Kapat",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Sonraki",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Önceki",
            $CONNECT_TO_INTERNET$: "<p>Internet’e bağlı olduğunuzdan emin olun. Bağlanmayla ilgili yardım için Elma menüsü > Sistem Tercihleri komutunu seçin, Ağ’ı tıklayın ve “Yardımcı Ol”u tıklayın.</p><p>Internet’e bağlıysanız ama içerik hâlâ görünmüyorsa daha sonra yeniden deneyin.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Slaytların otomatik ilerletilmesinden vazgeçmek için, Esc tuşuna basın veya slaytlar arasında hareket etmek için sol ve sağ oklara basın.",
            $AUTOPLAY_CANCEL$: "Slaytların otomatik ilerletilmesinden vazgeçildi. Slaytlar arasında hareket etmek için sol ve sağ oklara basın."
        },
        uk: {
            $GLOSSARY_CLOSE_BUTTON$: "Закрити",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Далі",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Назад",
            $CONNECT_TO_INTERNET$: "<p>Впевніться, що ваш комп’ютер під’єднаний до Інтернету. Щоб отримати допомогу зі з’єднанням, виберіть меню «Яблуко» > «Системні параметри», відкрийте панель «Мережа» і натисніть кнопку «Асистент».</p><p>Якщо інтернет-з’єднання активне, проте вміст все одно не з’являється, спробуйте ще раз пізніше.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Щоб зупинити автоматичний показ наступного слайда, натисніть клавішу Escape. Натискайте клавіші зі стрілками вліво чи вправо для переходу між слайдами.",
            $AUTOPLAY_CANCEL$: "Автоматичний показ наступного слайда скасовано. Натискайте клавіші зі стрілками вліво чи вправо для переходу між слайдами."
        },
        vi: {
            $GLOSSARY_CLOSE_BUTTON$: "Đóng",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "Tiếp",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "Trước",
            $CONNECT_TO_INTERNET$: "<p>Đảm bảo rằng bạn được kết nối Internet. Để được trợ giúp về kết nối, chọn menu Apple > Tùy chọn Hệ thống, bấm Mạng và bấm “Hỗ trợ tôi”.</p><p>Nếu bạn được kết nối Internet, và nội dung vẫn không xuất hiện, hãy thử lại sau.</p>",
            $AUTOPLAY_INSTRUCTIONS$: "Để hủy tự động chuyển trang chiếu, nhấn phím Escape, hoặc nhấn các mũi tên trái và phải để điều hướng giữa các trang chiếu.",
            $AUTOPLAY_CANCEL$: "Đã hủy tự động chuyển trang chiếu. Nhấn các mũi tên trái và phải để điều hướng giữa các trang chiếu."
        },
        zh: {
            $NO_WORD_BREAKS$: !0,
            $GLOSSARY_CLOSE_BUTTON$: "关闭",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "下一页",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "上一页",
            $CONNECT_TO_INTERNET$: "<p>请确定您的电脑已接入互联网。若要获得接入互联网的帮助，请选取苹果菜单 >“系统偏好设置”，点按“网络”，然后点按“向导”。</p><p>如果您的电脑已接入互联网，但是内容仍未显示，请稍后再试一次。</p>",
            $AUTOPLAY_INSTRUCTIONS$: "若要取消幻灯片自动前进的设置，请按 Escape 键，或者按左右箭头键来向前或向后浏览幻灯片。",
            $AUTOPLAY_CANCEL$: "已经取消幻灯片自动前进的设置。请按左右箭头键来向前或向后浏览幻灯片。"
        },
        "zh-tw": {
            $NO_WORD_BREAKS$: !0,
            $GLOSSARY_CLOSE_BUTTON$: "關閉",
            $NEXT_TOPIC_BUTTON_LABEL_SHORT$: "下一頁",
            $PREV_TOPIC_BUTTON_LABEL_SHORT$: "上一頁",
            $CONNECT_TO_INTERNET$: "<p>請確定您已經連接 Internet。如需連線的相關協助，請選擇“蘋果”選單 >“系統偏好設定⋯”，按一下“網路”，然後按一下“協助我⋯”。</p><p>若您已經連接 Internet 但仍無法顯示內容，請稍後再試一次。</p>",
            $AUTOPLAY_INSTRUCTIONS$: "若要取消自動播放幻燈片，請按 Escape 鍵，或按向左鍵和向右鍵來瀏覽幻燈片。",
            $AUTOPLAY_CANCEL$: "已取消自動播放幻燈片。請按向左鍵或向右鍵來瀏覽幻燈片。"
        }
    };
    return a["en-au"] = a.en, a
}), define("app", ["shared/app", "precompiled/app", "topic/controller", "topic/collection-view", "topic/route", "topic/topic-model-mixin", "nav/view", "shared/computed", "translations"], function(a, b, c, d, e, f, g, h, i) {
    return Em.TEMPLATES.application = b, $(document.body).addClass("seahawk"), $("body").append('<p role="status" id="alerts"></p>'), $(window).on("resize", function() {
        Em.run.debounce(a, "updateWindowSize", 100)
    }), $(document).keydown(function(b) {
        var c = a.Router.router, d = "rtl" === a.get("bundle.currentLocale.text-direction"), e = a.get("currentTopic.prev"), f = a.get("currentTopic.next"), g = d ? 39: 37, h = d ? 37: 39, i = a.get("currentTopic"), j = a.get("book.toc");
        switch ( - 1 === j.indexOf(i) ? f = j[0] : 0 === j.indexOf(i) && (e = null), b.keyCode) {
        case g:
            e && c.transitionTo("topic", e.get("routeSlug")), b.stopPropagation(), b.preventDefault();
            break;
        case h:
            f && c.transitionTo("topic", f.get("routeSlug")), b.stopPropagation(), b.preventDefault()
        }
    }), a.reopen({
        NAME: "seahawk",
        TRANSLATIONS: i,
        NavigationView: g,
        IndexView: d,
        TopicView: d,
        IndexController: c,
        TopicController: c,
        TopicRoute: e,
        IndexRoute: e.extend({
            beforeModel: function() {
                this.transitionTo("topic", a.get("book.landing.routeSlug"))
            }
        }),
        anyTopicContentLoaded: Em.RSVP.defer(),
        willCreateBookWithData: function(a) {
            return a = this._super(a), a.topicModelMixin = f, a
        },
        navTopics: function() {
            var a = this.get("book"), b = a.topicsInList(a.toc);
            return b
        }.property("book"),
        previousTopicLabel: h.loc("$PREV_TOPIC_BUTTON_LABEL_SHORT$"),
        nextTopicLabel: h.loc("$NEXT_TOPIC_BUTTON_LABEL_SHORT$"),
        removeInitialLoading: function() {
            this.get("anyTopicContentLoaded.promise") || this.set("anyTopicContentLoaded", Em.RSVP.defer()), this.get("anyTopicContentLoaded.promise")["finally"](function() {
                $(".loading").remove()
            })
        },
        bookDidLoad: function(b, c, d) {
            this.deferReadiness(), this._super(b, c, d);
            var e = b.css, f = Em.run.bind(this, this.advanceReadiness);
            if (!e)
                return void f();
            e = a.get("bundle.path") + e;
            var g = this.get("linkElementEventTest");
            $.ajax({
                context: this,
                url: e,
                complete: function() {
                    g.then(function(a) {
                        $("<link>").on("load error", f).attr({
                            href: e,
                            rel: "stylesheet",
                            type: "text/css"
                        }).appendTo("head"), a || Em.run.later(this, f, 250)
                    })
                }
            })
        },
        linkElementEventTest: function() {
            var a = new Em.RSVP.Promise(function(b) {
                var c = Em.run.later(this, b, !1, 100), d = $("<link>").on("load error", function() {
                    Em.run.cancel(c), b(!0)
                }).attr({
                    href: "data:text/css,foo{bar:baz;}",
                    rel: "stylesheet",
                    type: "text/css"
                }).appendTo("head");
                Em.run.next(function() {
                    a.then(function() {
                        d.remove()
                    })
                })
            });
            return a
        }.property(),
        updateWindowSize: function() {
            this.set("windowSize", Em.Object.create({
                height: $(window).height(),
                width: $(window).width()
            }))
        },
        windowSize: Em.Object.create({
            height: $(window).height(),
            width: $(window).width()
        })
    }), window.App = a
}), require(["app"]);
