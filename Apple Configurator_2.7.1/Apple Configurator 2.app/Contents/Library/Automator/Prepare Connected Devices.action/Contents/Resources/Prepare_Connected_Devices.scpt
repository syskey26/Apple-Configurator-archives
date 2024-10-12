FasdUAS 1.101.10   ��   ��    k             l     ��  ��    - '  Prepare_Connected_Devices.applescript     � 	 	 N     P r e p a r e _ C o n n e c t e d _ D e v i c e s . a p p l e s c r i p t   
  
 l     ��  ��    !   Prepare Connected Devices     �   6     P r e p a r e   C o n n e c t e d   D e v i c e s      l     ��������  ��  ��        l     ��  ��    &    Created by Sal Work on 5/4/16.     �   @     C r e a t e d   b y   S a l   W o r k   o n   5 / 4 / 1 6 .      l     ��  ��    = 7  Copyright � 2016-2018 Apple Inc. All rights reserved.     �   n     C o p y r i g h t   �   2 0 1 6 - 2 0 1 8   A p p l e   I n c .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        h     �� �� 60 prepare_connected_devices Prepare_Connected_Devices  k            ! " ! j     �� #
�� 
pare # 4     �� $
�� 
pcls $ m     % % � & &  A M B u n d l e A c t i o n "  ' ( ' l     ��������  ��  ��   (  ) * ) j   	 �� +�� 0 loggingstatus loggingStatus + m   	 
��
�� boovtrue *  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   outlet properties    1 � 2 2 $   o u t l e t   p r o p e r t i e s /  3 4 3 j    �� 5�� (0 languagespopupmenu languagesPopupMenu 5 m    ��
�� 
msng 4  6 7 6 j    �� 8�� $0 localespopupmenu localesPopupMenu 8 m    ��
�� 
msng 7  9 : 9 l     ��������  ��  ��   :  ; < ; j    �� =�� .0 actionidentiferstring actionIdentiferString = m     > > � ? ?  C N F G A C T - 0 8 <  @ A @ l     ��������  ��  ��   A  B C B l     ��������  ��  ��   C  D E D i     F G F I      �� H���� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_ H  I J I o      ���� 	0 input   J  K L K o      ���� 0 anaction anAction L  M�� M o      ���� 0 errorref errorRef��  ��   G k    ` N N  O P O n     Q R Q I    �� S���� 0 logthis logThis S  T�� T m     U U � V V  r u n W i t h I n p u t ( & )��  ��   R  f      P  W�� W Q   ` X Y Z X k   
% [ [  \ ] \ r   
  ^ _ ^ c   
  ` a ` o   
 ���� 	0 input   a m    ��
�� 
list _ o      ���� 0 
theseecids 
theseECIDs ]  b c b Z    $ d e���� d =    f g f o    ���� 0 
theseecids 
theseECIDs g J    ����   e R     �� h��
�� .ascrerr ****      � **** h l    i���� i n    j k j I    �� l���� 40 getlocalizedstringforkey getLocalizedStringForKey l  m�� m m     n n � o o  N O _ I N P U T _ E R R O R��  ��   k  f    ��  ��  ��  ��  ��   c  p q p l  % %��������  ��  ��   q  r s r l  % %�� t u��   t 7 1 STORE THE ACTION PARAMETERS RECORD IN A VARIABLE    u � v v b   S T O R E   T H E   A C T I O N   P A R A M E T E R S   R E C O R D   I N   A   V A R I A B L E s  w x w r   % , y z y n  % * { | { I   & *�������� 0 
parameters  ��  ��   |  f   % & z l      }���� } o      ���� ,0 parametersdictionary parametersDictionary��  ��   x  ~  ~ l  - -��������  ��  ��     � � � l  - -�� � ���   � ' ! EXTRACT CURRENT PARAMETER VALUES    � � � � B   E X T R A C T   C U R R E N T   P A R A M E T E R   V A L U E S �  � � � l  - -��������  ��  ��   �  � � � l   - -�� � ���   �   MDM ENROLLMENT OPTIONS     � � � � 0   M D M   E N R O L L M E N T   O P T I O N S   �  � � � r   - 7 � � � l  - 5 ����� � c   - 5 � � � l  - 3 ����� � n  - 3 � � � I   . 3�� ����� 0 valueforkey_ valueForKey_ �  ��� � m   . / � � � � �  s h o u l d U s e M D M��  ��   � o   - .���� ,0 parametersdictionary parametersDictionary��  ��   � m   3 4��
�� 
bool��  ��   � o      ���� 0 shouldusemdm shouldUseMDM �  � � � n  8 @ � � � I   9 @�� ����� 0 logthis logThis �  ��� � b   9 < � � � m   9 : � � � � �  s h o u l d U s e M D M :   � o   : ;���� 0 shouldusemdm shouldUseMDM��  ��   �  f   8 9 �  � � � l  A A��������  ��  ��   �  � � � Z   A � ��� � � =  A D � � � o   A B���� 0 shouldusemdm shouldUseMDM � m   B C��
�� boovtrue � k   G � �  � � � l  G G�� � ���   �   enrollment URL    � � � �    e n r o l l m e n t   U R L �  � � � r   G Q � � � l  G O ����� � c   G O � � � l  G M ����� � n  G M � � � I   H M�� ����� 0 valueforkey_ valueForKey_ �  ��� � m   H I � � � � �  e n r o l l m e n t U R L��  ��   � o   G H���� ,0 parametersdictionary parametersDictionary��  ��   � m   M N��
�� 
ctxt��  ��   � o      ���� 0 enrollmenturl enrollmentURL �  � � � n  R Z � � � I   S Z�� ����� 0 logthis logThis �  ��� � b   S V � � � m   S T � � � � �  e n r o l l m e n t U R L :   � o   T U���� 0 enrollmenturl enrollmentURL��  ��   �  f   R S �  � � � Z  [ n � ����� � =  [ ^ � � � o   [ \���� 0 enrollmenturl enrollmentURL � m   \ ] � � � � �   � R   a j�� ���
�� .ascrerr ****      � **** � l  c i ����� � n  c i � � � I   d i�� ����� 40 getlocalizedstringforkey getLocalizedStringForKey �  ��� � m   d e � � � � � , M I S S I N G _ E N R O L L M E N T _ U R L��  ��   �  f   c d��  ��  ��  ��  ��   �  � � � l  o o��������  ��  ��   �  � � � r   o y � � � l  o w ���� � c   o w � � � l  o u ��~�} � n  o u � � � I   p u�| ��{�| 0 valueforkey_ valueForKey_ �  ��z � m   p q � � � � � ( u s e A n c h o r C e r t i f i c a t e�z  �{   � o   o p�y�y ,0 parametersdictionary parametersDictionary�~  �}   � m   u v�x
�x 
bool��  �   � o      �w�w ,0 useanchorcertificate useAnchorCertificate �  � � � n  z � � � � I   { ��v ��u�v 0 logthis logThis �  ��t � b   { � � � � m   { ~ � � � � � , u s e A n c h o r C e r t i f i c a t e :   � o   ~ �s�s ,0 useanchorcertificate useAnchorCertificate�t  �u   �  f   z { �  � � � l  � ��r�q�p�r  �q  �p   �  ��o � Z   � � ��n � � =  � � � � � o   � ��m�m ,0 useanchorcertificate useAnchorCertificate � m   � ��l
�l boovtrue � k   � � �  � � � l  � ��k �k      CERTIFICATE CHECKS    � &   C E R T I F I C A T E   C H E C K S �  l  � ��j�j     check validity of path    � .   c h e c k   v a l i d i t y   o f   p a t h 	 r   � �

 l  � ��i�h c   � � l  � ��g�f n  � � I   � ��e�d�e 0 valueforkey_ valueForKey_ �c m   � � � $ M D M C e r t i f i c a t e P a t h�c  �d   o   � ��b�b ,0 parametersdictionary parametersDictionary�g  �f   m   � ��a
�a 
ctxt�i  �h   o      �`�` (0 mdmcertificatepath MDMCertificatePath	  n  � � I   � ��_�^�_ 0 logthis logThis �] b   � � m   � � � ( M D M C e r t i f i c a t e P a t h :   o   � ��\�\ (0 mdmcertificatepath MDMCertificatePath�]  �^    f   � �  !  Z  � �"#�[�Z" =  � �$%$ o   � ��Y�Y (0 mdmcertificatepath MDMCertificatePath% m   � �&& �''  # R   � ��X(�W
�X .ascrerr ****      � ****( l  � �)�V�U) n  � �*+* I   � ��T,�S�T 40 getlocalizedstringforkey getLocalizedStringForKey, -�R- m   � �.. �// H N O _ A N C H O R _ C E R T I F I C A T E _ F I L E _ I N D I C A T E D�R  �S  +  f   � ��V  �U  �W  �[  �Z  ! 010 l  � ��Q�P�O�Q  �P  �O  1 232 l  � ��N45�N  4   check for file   5 �66    c h e c k   f o r   f i l e3 787 r   � �9:9 n  � �;<; I   � ��M�L�K�M  0 defaultmanager defaultManager�L  �K  < n  � �=>= o   � ��J�J 0 nsfilemanager NSFileManager> m   � ��I
�I misccura: o      �H�H "0 thisfilemanager thisFileManager8 ?@? r   � �ABA c   � �CDC l  � �E�G�FE n  � �FGF I   � ��EH�D�E &0 fileexistsatpath_ fileExistsAtPath_H I�CI o   � ��B�B (0 mdmcertificatepath MDMCertificatePath�C  �D  G o   � ��A�A "0 thisfilemanager thisFileManager�G  �F  D m   � ��@
�@ 
boolB o      �?�? 0 fileexistence fileExistence@ JKJ Z   � �LM�>�=L =  � �NON o   � ��<�< 0 fileexistence fileExistenceO m   � ��;
�; boovfalsM R   � ��:P�9
�: .ascrerr ****      � ****P l  � �Q�8�7Q n  � �RSR I   � ��6T�5�6 40 getlocalizedstringforkey getLocalizedStringForKeyT U�4U m   � �VV �WW @ N O _ A N C H O R _ C E R T I F I C A T E _ F I L E _ F O U N D�4  �5  S  f   � ��8  �7  �9  �>  �=  K XYX l  � ��3�2�1�3  �2  �1  Y Z[Z l  � ��0\]�0  \   check for type   ] �^^    c h e c k   f o r   t y p e[ _�/_ Z   �`a�.�-` >  � �bcb l  � �d�,�+d n  � �efe I   � ��*g�)�* 0 	getutifor 	getUTIForg h�(h o   � ��'�' (0 mdmcertificatepath MDMCertificatePath�(  �)  f  f   � ��,  �+  c m   � �ii �jj . p u b l i c . x 5 0 9 - c e r t i f i c a t ea R   ��&k�%
�& .ascrerr ****      � ****k l  �l�$�#l n  �mnm I   ��"o�!�" 40 getlocalizedstringforkey getLocalizedStringForKeyo p� p m   � �qq �rr 0 I N V A L I D _ C E R T I F I C A T E _ T Y P E�   �!  n  f   � ��$  �#  �%  �.  �-  �/  �n   � r  	sts m  	�
� 
msngt o      �� (0 mdmcertificatepath MDMCertificatePath�o  ��   � k  uu vwv r  xyx m  �
� 
msngy o      �� 0 enrollmenturl enrollmentURLw z�z r  {|{ m  �
� 
msng| o      �� (0 mdmcertificatepath MDMCertificatePath�   � }~} l ����  �  �  ~ � l  ����  �   DEVICE SUPERVISION    � ��� (   D E V I C E   S U P E R V I S I O N  � ��� r  )��� l '���� c  '��� l %���� n %��� I  %���� 0 valueforkey_ valueForKey_� ��� m  !�� ��� , s h o u l d S u p e r v i s e D e v i c e s�  �  � o  �� ,0 parametersdictionary parametersDictionary�  �  � m  %&�
� 
bool�  �  � o      �� 00 shouldsupervisedevices shouldSuperviseDevices� ��� n *4��� I  +4�
��	�
 0 logthis logThis� ��� b  +0��� m  +.�� ��� 0 s h o u l d S u p e r v i s e D e v i c e s :  � o  ./�� 00 shouldsupervisedevices shouldSuperviseDevices�  �	  �  f  *+� ��� l 55����  �  �  � ��� l  55����  �   MAY 01 2016    � ���    M A Y   0 1   2 0 1 6  � ��� r  5A��� l 5?���� c  5?��� l 5=�� ��� n 5=��� I  6=������� 0 valueforkey_ valueForKey_� ���� m  69�� ��� 0 s h o u l d E n a b l e S h a r e d D e v i c e��  ��  � o  56���� ,0 parametersdictionary parametersDictionary�   ��  � m  =>��
�� 
bool�  �  � o      ���� 40 shouldenableshareddevice shouldEnableSharedDevice� ��� n BL��� I  CL������� 0 logthis logThis� ���� b  CH��� m  CF�� ��� 4 s h o u l d E n a b l e S h a r e d D e v i c e :  � o  FG���� 40 shouldenableshareddevice shouldEnableSharedDevice��  ��  �  f  BC� ��� l MM��������  ��  ��  � ��� Z  M������� = MP��� o  MN���� 00 shouldsupervisedevices shouldSuperviseDevices� m  NO��
�� boovtrue� k  St�� ��� l SS������  �   connect with computerss   � ��� 0   c o n n e c t   w i t h   c o m p u t e r s s� ��� r  S_��� l S]������ c  S]��� l S[������ n S[��� I  T[������� 0 valueforkey_ valueForKey_� ���� m  TW�� ��� , a l l o w P a i r i n g W i t h i T u n e s��  ��  � o  ST���� ,0 parametersdictionary parametersDictionary��  ��  � m  [\��
�� 
bool��  ��  � o      ���� 00 allowpairingwithitunes allowPairingWithiTunes� ��� n `j��� I  aj������� 0 logthis logThis� ���� b  af��� m  ad�� ��� 0 a l l o w P a i r i n g W i t h i T u n e s :  � o  de���� 00 allowpairingwithitunes allowPairingWithiTunes��  ��  �  f  `a� ��� l kk��������  ��  ��  � ��� l kk������  �   ORGANIZATION INFORMATION   � ��� 2   O R G A N I Z A T I O N   I N F O R M A T I O N� ��� r  kw��� l ku������ c  ku��� l ks������ n ks��� I  ls������� 0 valueforkey_ valueForKey_� ���� m  lo�� ���   o r g a n i z a t i o n N a m e��  ��  � o  kl���� ,0 parametersdictionary parametersDictionary��  ��  � m  st��
�� 
ctxt��  ��  � o      ���� $0 organizationname organizationName� ��� n x���� I  y�������� 0 logthis logThis� ���� b  y~��� m  y|�� �   $ o r g a n i z a t i o n N a m e :  � o  |}���� $0 organizationname organizationName��  ��  �  f  xy�  l ����������  ��  ��    r  �� l ������ c  ��	 l ��
����
 n �� I  �������� 0 valueforkey_ valueForKey_ �� m  �� � & o r g a n i z a t i o n A d d r e s s��  ��   o  ������ ,0 parametersdictionary parametersDictionary��  ��  	 m  ����
�� 
ctxt��  ��   o      ���� *0 organizationaddress organizationAddress  n �� I  �������� 0 logthis logThis �� b  �� m  �� � * o r g a n i z a t i o n A d d r e s s :   o  ������ *0 organizationaddress organizationAddress��  ��    f  ��  l ����������  ��  ��    r  ��  l ��!����! c  ��"#" l ��$����$ n ��%&% I  ����'���� 0 valueforkey_ valueForKey_' (��( m  ��)) �** " o r g a n i z a t i o n E m a i l��  ��  & o  ������ ,0 parametersdictionary parametersDictionary��  ��  # m  ����
�� 
ctxt��  ��    o      ���� &0 organizationemail organizationEmail +,+ n ��-.- I  ����/���� 0 logthis logThis/ 0��0 b  ��121 m  ��33 �44 & o r g a n i z a t i o n E m a i l :  2 o  ������ &0 organizationemail organizationEmail��  ��  .  f  ��, 565 l ����������  ��  ��  6 787 r  ��9:9 l ��;����; c  ��<=< l ��>����> n ��?@? I  ����A���� 0 valueforkey_ valueForKey_A B��B m  ��CC �DD " o r g a n i z a t i o n P h o n e��  ��  @ o  ������ ,0 parametersdictionary parametersDictionary��  ��  = m  ����
�� 
ctxt��  ��  : o      ���� &0 organizationphone organizationPhone8 EFE n ��GHG I  ����I���� 0 logthis logThisI J��J b  ��KLK m  ��MM �NN & o r g a n i z a t i o n P h o n e :  L o  ������ &0 organizationphone organizationPhone��  ��  H  f  ��F OPO l ����������  ��  ��  P QRQ r  ��STS l ��U����U c  ��VWV l ��X����X n ��YZY I  ����[���� 0 valueforkey_ valueForKey_[ \��\ m  ��]] �^^ , o r g a n i z a t i o n D e p a r t m e n t��  ��  Z o  ������ ,0 parametersdictionary parametersDictionary��  ��  W m  ����
�� 
ctxt��  ��  T o      ���� 00 organizationdepartment organizationDepartmentR _`_ n ��aba I  ����c���� 0 logthis logThisc d��d b  ��efe m  ��gg �hh 0 o r g a n i z a t i o n D e p a r t m e n t :  f o  ������ 00 organizationdepartment organizationDepartment��  ��  b  f  ��` iji l ����������  ��  ��  j klk l ����mn��  m   CERTIFICATE CHECKS   n �oo &   C E R T I F I C A T E   C H E C K Sl pqp l ����������  ��  ��  q rsr l ����tu��  t   check validity of path   u �vv .   c h e c k   v a l i d i t y   o f   p a t hs wxw r  ��yzy l ��{����{ c  ��|}| l ��~��~~ n ��� I  ���}��|�} 0 valueforkey_ valueForKey_� ��{� m  ���� ��� . h o s t C e r t i f i c a t e F i l e P a t h�{  �|  � o  ���z�z ,0 parametersdictionary parametersDictionary�  �~  } m  ���y
�y 
ctxt��  ��  z o      �x�x 20 hostcertificatefilepath hostCertificateFilePathx ��� n �
��� I  �
�w��v�w 0 logthis logThis� ��u� b  ���� m  ��� ��� 2 h o s t C e r t i f i c a t e F i l e P a t h :  � o  �t�t 20 hostcertificatefilepath hostCertificateFilePath�u  �v  �  f  ��� ��� Z $���s�r� = ��� o  �q�q 20 hostcertificatefilepath hostCertificateFilePath� m  �� ���  � R   �p��o
�p .ascrerr ****      � ****� l ��n�m� n ��� I  �l��k�l 40 getlocalizedstringforkey getLocalizedStringForKey� ��j� m  �� ��� D N O _ H O S T _ C E R T I F I C A T E _ F I L E _ I N D I C A T E D�j  �k  �  f  �n  �m  �o  �s  �r  � ��� l %%�i�h�g�i  �h  �g  � ��� l %%�f���f  �   check for file   � ���    c h e c k   f o r   f i l e� ��� r  %2��� n %0��� I  ,0�e�d�c�e  0 defaultmanager defaultManager�d  �c  � n %,��� o  (,�b�b 0 nsfilemanager NSFileManager� m  %(�a
�a misccura� o      �`�` "0 thisfilemanager thisFileManager� ��� r  3?��� c  3=��� l 3;��_�^� n 3;��� I  4;�]��\�] &0 fileexistsatpath_ fileExistsAtPath_� ��[� o  47�Z�Z 20 hostcertificatefilepath hostCertificateFilePath�[  �\  � o  34�Y�Y "0 thisfilemanager thisFileManager�_  �^  � m  ;<�X
�X 
bool� o      �W�W 0 fileexistence fileExistence� ��� Z  @U���V�U� = @C��� o  @A�T�T 0 fileexistence fileExistence� m  AB�S
�S boovfals� R  FQ�R��Q
�R .ascrerr ****      � ****� l HP��P�O� n HP��� I  IP�N��M�N 40 getlocalizedstringforkey getLocalizedStringForKey� ��L� m  IL�� ��� < N O _ H O S T _ C E R T I F I C A T E _ F I L E _ F O U N D�L  �M  �  f  HI�P  �O  �Q  �V  �U  � ��� l VV�K�J�I�K  �J  �I  � ��� l VV�H���H  �   check for type   � ���    c h e c k   f o r   t y p e� ��G� Z  Vt���F�E� > Vb��� l V^��D�C� n V^��� I  W^�B��A�B 0 	getutifor 	getUTIFor� ��@� o  WZ�?�? 20 hostcertificatefilepath hostCertificateFilePath�@  �A  �  f  VW�D  �C  � m  ^a�� ��� . p u b l i c . x 5 0 9 - c e r t i f i c a t e� R  ep�>��=
�> .ascrerr ****      � ****� l go��<�;� n go��� I  ho�:��9�: 40 getlocalizedstringforkey getLocalizedStringForKey� ��8� m  hk�� ��� 0 I N V A L I D _ C E R T I F I C A T E _ T Y P E�8  �9  �  f  gh�<  �;  �=  �F  �E  �G  ��  � k  w��� ��� r  w|��� m  wz�7
�7 
msng� o      �6�6 00 allowpairingwithitunes allowPairingWithiTunes� ��� r  }���� m  }��5
�5 
msng� o      �4�4 20 hostcertificatefilepath hostCertificateFilePath� ��� r  ����� m  ���3
�3 
msng� o      �2�2 $0 organizationname organizationName� ��� r  ����� m  ���1
�1 
msng� o      �0�0 *0 organizationaddress organizationAddress� ��� r  ����� m  ���/
�/ 
msng� o      �.�. &0 organizationphone organizationPhone� ��� r  ����� m  ���-
�- 
msng� o      �,�, &0 organizationemail organizationEmail� ��+� r  ����� m  ���*
�* 
msng� o      �)�) 00 organizationdepartment organizationDepartment�+  � ��� l ���(�'�&�(  �'  �&  �    l  ���%�%     iOS SETUP OPTIONS     � &   i O S   S E T U P   O P T I O N S    r  �� J  ���$�$   o      �#�# 20 setupsuppressionoptions setupSuppressionOptions 	
	 l ���"�!� �"  �!  �   
  l ����    # added MAY 05-2017    � & #   a d d e d   M A Y   0 5 - 2 0 1 7  r  �� l ���� c  �� l ���� n �� I  ����� 0 valueforkey_ valueForKey_ � m  �� �   s h o w L a n g u a g e P a n e�  �   o  ���� ,0 parametersdictionary parametersDictionary�  �   m  ���
� 
bool�  �   o      �� $0 showlanguagepane showLanguagePane  n �� !  I  ���"�� 0 logthis logThis" #�# b  ��$%$ m  ��&& �'' $ s h o w L a n g u a g e P a n e :  % o  ���� $0 showlanguagepane showLanguagePane�  �  !  f  �� ()( Z ��*+��* = ��,-, o  ���� $0 showlanguagepane showLanguagePane- m  ���
� boovfals+ r  ��./. m  ��00 �11  - - s k i p - l a n g u a g e/ l     2��2 n      343  ;  ��4 o  ���
�
 20 setupsuppressionoptions setupSuppressionOptions�  �  �  �  ) 565 l ���	���	  �  �  6 787 l ���9:�  9  # added MAY 05-2017   : �;; & #   a d d e d   M A Y   0 5 - 2 0 1 78 <=< r  ��>?> m  ���
� boovfals? o      �� &0 shouldsetlanguage shouldSetLanguage= @A@ Z  �)BC��B = ��DED o  ���� $0 showlanguagepane showLanguagePaneE m  ��� 
�  boovfalsC k  �%FF GHG r  ��IJI l ��K����K c  ��LML l ��N����N n ��OPO I  ����Q���� 0 valueforkey_ valueForKey_Q R��R m  ��SS �TT " s h o u l d S e t L a n g u a g e��  ��  P o  ������ ,0 parametersdictionary parametersDictionary��  ��  M m  ����
�� 
bool��  ��  J o      ���� &0 shouldsetlanguage shouldSetLanguageH UVU n �
WXW I  �
��Y���� 0 logthis logThisY Z��Z b  �[\[ m  �]] �^^ & s h o u l d S e t L a n g u a g e :  \ o  ���� &0 shouldsetlanguage shouldSetLanguage��  ��  X  f  ��V _��_ Z  %`a����` = bcb o  ���� &0 shouldsetlanguage shouldSetLanguagec m  ��
�� boovtruea r  !ded l f����f c  ghg l i����i n jkj I  ��l���� 0 valueforkey_ valueForKey_l m��m m  nn �oo 0 l a n g u a g e C o d e D i s p l a y T i t l e��  ��  k o  ���� ,0 parametersdictionary parametersDictionary��  ��  h m  ��
�� 
ctxt��  ��  e o      ���� 40 languagecodedisplaytitle languageCodeDisplayTitle��  ��  ��  �  �  A pqp l **��������  ��  ��  q rsr l **��tu��  t  # added MAY 05-2017   u �vv & #   a d d e d   M A Y   0 5 - 2 0 1 7s wxw r  *8yzy l *4{����{ c  *4|}| l *2~����~ n *2� I  +2������� 0 valueforkey_ valueForKey_� ���� m  +.�� ���  s h o w R e g i o n P a n e��  ��  � o  *+���� ,0 parametersdictionary parametersDictionary��  ��  } m  23��
�� 
bool��  ��  z o      ����  0 showregionpane showRegionPanex ��� n 9E��� I  :E������� 0 logthis logThis� ���� b  :A��� m  :=�� ���   s h o w R e g i o n P a n e :  � o  =@����  0 showregionpane showRegionPane��  ��  �  f  9:� ��� Z FZ������� = FK��� o  FI����  0 showregionpane showRegionPane� m  IJ��
�� boovfals� r  NV��� m  NQ�� ���  - - s k i p - r e g i o n� l     ������ n      ���  ;  TU� o  QT���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l [[��������  ��  ��  � ��� l [[������  �  # added MAY 05-2017   � ��� & #   a d d e d   M A Y   0 5 - 2 0 1 7� ��� Z  [�������� = [`��� o  [^����  0 showregionpane showRegionPane� m  ^_��
�� boovfals� k  c��� ��� r  cq��� l cm������ c  cm��� l ck������ n ck��� I  dk������� 0 valueforkey_ valueForKey_� ���� m  dg�� ���  s h o u l d S e t R e g i o n��  ��  � o  cd���� ,0 parametersdictionary parametersDictionary��  ��  � m  kl��
�� 
bool��  ��  � o      ���� "0 shouldsetregion shouldSetRegion� ��� n r~��� I  s~������� 0 logthis logThis� ���� b  sz��� m  sv�� ��� " s h o u l d S e t R e g i o n :  � o  vy���� "0 shouldsetregion shouldSetRegion��  ��  �  f  rs� ���� Z  �������� = ���� o  ����� "0 shouldsetregion shouldSetRegion� m  ����
�� boovtrue� r  ����� l �������� c  ����� l �������� n ����� I  ��������� 0 valueforkey_ valueForKey_� ���� m  ���� ��� , l o c a l e C o d e D i s p l a y T i t l e��  ��  � o  ������ ,0 parametersdictionary parametersDictionary��  ��  � m  ����
�� 
ctxt��  ��  � o      ���� 00 localecodedisplaytitle localeCodeDisplayTitle��  ��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� r  ����� l �������� c  ����� l �������� n ����� I  ��������� 0 valueforkey_ valueForKey_� ���� m  ���� ���  s h o w P r i v a c y P a n e��  ��  � o  ������ ,0 parametersdictionary parametersDictionary��  ��  � m  ����
�� 
bool��  ��  � o      ���� "0 showprivacypane showPrivacyPane� ��� n ����� I  ��������� 0 logthis logThis� ���� b  ����� m  ���� ��� " s h o w P r i v a c y P a n e :  � o  ������ "0 showprivacypane showPrivacyPane��  ��  �  f  ��� ��� Z ��������� = ����� o  ������ "0 showprivacypane showPrivacyPane� m  ����
�� boovfals� r  ����� m  ���� ���  - - s k i p - p r i v a c y� l     ������ n      ���  ;  ��� o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� r  ����� l �� ����  c  �� l ������ n �� I  �������� 0 valueforkey_ valueForKey_ �� m  �� �		  s h o w A p p l e I D P a n e��  ��   o  ������ ,0 parametersdictionary parametersDictionary��  ��   m  ����
�� 
bool��  ��  � o      ���� "0 showappleidpane showAppleIDPane� 

 n �� I  ����~� 0 logthis logThis �} b  �� m  �� � " s h o w A p p l e I D P a n e :   o  ���|�| "0 showappleidpane showAppleIDPane�}  �~    f  ��  Z ���{�z = �� o  ���y�y "0 showappleidpane showAppleIDPane m  ���x
�x boovfals r  �� m  �� �  - - s k i p - a p p l e i d l     �w�v n         ;  ��  o  ���u�u 20 setupsuppressionoptions setupSuppressionOptions�w  �v  �{  �z   !"! l   �t�s�r�t  �s  �r  " #$# r   %&% l  
'�q�p' c   
()( l  *�o�n* n  +,+ I  �m-�l�m 0 valueforkey_ valueForKey_- .�k. m  // �00   s h o w A p p l e P a y P a n e�k  �l  , o   �j�j ,0 parametersdictionary parametersDictionary�o  �n  ) m  	�i
�i 
bool�q  �p  & o      �h�h $0 showapplepaypane showApplePayPane$ 121 n 343 I  �g5�f�g 0 logthis logThis5 6�e6 b  787 m  99 �:: $ s h o w A p p l e P a y P a n e :  8 o  �d�d $0 showapplepaypane showApplePayPane�e  �f  4  f  2 ;<; Z 0=>�c�b= = !?@? o  �a�a $0 showapplepaypane showApplePayPane@ m   �`
�` boovfals> r  $,ABA m  $'CC �DD  - - s k i p - a p p l e p a yB l     E�_�^E n      FGF  ;  *+G o  '*�]�] 20 setupsuppressionoptions setupSuppressionOptions�_  �^  �c  �b  < HIH l 11�\�[�Z�\  �[  �Z  I JKJ r  1?LML l 1;N�Y�XN c  1;OPO l 19Q�W�VQ n 19RSR I  29�UT�T�U 0 valueforkey_ valueForKey_T U�SU m  25VV �WW & s h o w D i a g n o s t i c s P a n e�S  �T  S o  12�R�R ,0 parametersdictionary parametersDictionary�W  �V  P m  9:�Q
�Q 
bool�Y  �X  M o      �P�P *0 showdiagnosticspane showDiagnosticsPaneK XYX n @LZ[Z I  AL�O\�N�O 0 logthis logThis\ ]�M] b  AH^_^ m  AD`` �aa * s h o w D i a g n o s t i c s P a n e :  _ o  DG�L�L *0 showdiagnosticspane showDiagnosticsPane�M  �N  [  f  @AY bcb Z Made�K�Jd = MRfgf o  MP�I�I *0 showdiagnosticspane showDiagnosticsPaneg m  PQ�H
�H boovfalse r  U]hih m  UXjj �kk $ - - s k i p - d i a g n o s t i c si l     l�G�Fl n      mnm  ;  [\n o  X[�E�E 20 setupsuppressionoptions setupSuppressionOptions�G  �F  �K  �J  c opo l bb�D�C�B�D  �C  �B  p qrq r  bpsts l blu�A�@u c  blvwv l bjx�?�>x n bjyzy I  cj�={�<�= 0 valueforkey_ valueForKey_{ |�;| m  cf}} �~~   s h o w L o c a t i o n P a n e�;  �<  z o  bc�:�: ,0 parametersdictionary parametersDictionary�?  �>  w m  jk�9
�9 
bool�A  �@  t o      �8�8 $0 showlocationpane showLocationPaner � n q}��� I  r}�7��6�7 0 logthis logThis� ��5� b  ry��� m  ru�� ��� $ s h o w L o c a t i o n P a n e :  � o  ux�4�4 $0 showlocationpane showLocationPane�5  �6  �  f  qr� ��� Z ~����3�2� = ~���� o  ~��1�1 $0 showlocationpane showLocationPane� m  ���0
�0 boovfals� r  ����� m  ���� ���  - - s k i p - l o c a t i o n� l     ��/�.� n      ���  ;  ��� o  ���-�- 20 setupsuppressionoptions setupSuppressionOptions�/  �.  �3  �2  � ��� l ���,�+�*�,  �+  �*  � ��� r  ����� l ����)�(� c  ����� l ����'�&� n ����� I  ���%��$�% 0 valueforkey_ valueForKey_� ��#� m  ���� ���   s h o w P a s s c o d e P a n e�#  �$  � o  ���"�" ,0 parametersdictionary parametersDictionary�'  �&  � m  ���!
�! 
bool�)  �(  � o      � �  $0 showpasscodepane showPasscodePane� ��� n ����� I  ������ 0 logthis logThis� ��� b  ����� m  ���� ��� $ s h o w P a s s c o d e P a n e :  � o  ���� $0 showpasscodepane showPasscodePane�  �  �  f  ��� ��� Z ������� = ����� o  ���� $0 showpasscodepane showPasscodePane� m  ���
� boovfals� r  ����� m  ���� ���  - - s k i p - p a s s c o d e� l     ���� n      ���  ;  ��� o  ���� 20 setupsuppressionoptions setupSuppressionOptions�  �  �  �  � ��� l ������  �  �  � ��� r  ����� l ������ c  ����� l ������ n ����� I  ������ 0 valueforkey_ valueForKey_� ��� m  ���� ���  s h o w R e s t o r e P a n e�  �  � o  ���
�
 ,0 parametersdictionary parametersDictionary�  �  � m  ���	
�	 
bool�  �  � o      �� "0 showrestorepane showRestorePane� ��� n ����� I  ������ 0 logthis logThis� ��� b  ����� m  ���� ��� B s h o w R e s t o r e P a n e   ( i C l o u d   B a c k u p ) :  � o  ���� "0 showrestorepane showRestorePane�  �  �  f  ��� ��� Z ������� = ����� o  ���� "0 showrestorepane showRestorePane� m  ��� 
�  boovfals� r  ����� m  ���� ���  - - s k i p - r e s t o r e� l     ������ n      ���  ;  ��� o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��  �  �  � ��� l ����������  ��  ��  � ��� r  ���� l �������� c  ����� l �������� n ����� I  ��������� 0 valueforkey_ valueForKey_� ���� m  ���� ��� & s h o w D i s p l a y Z o o m P a n e��  ��  � o  ������ ,0 parametersdictionary parametersDictionary��  ��  � m  ����
�� 
bool��  ��  � o      ���� *0 showdisplayzoompane showDisplayZoomPane� ��� n ��� I  ������� 0 logthis logThis� ���� b  ��� m  �� ��� * s h o w D i s p l a y Z o o m P a n e :  � o  ���� *0 showdisplayzoompane showDisplayZoomPane��  ��  �  f  � ��� Z % ����  =  o  ���� *0 showdisplayzoompane showDisplayZoomPane m  ��
�� boovfals r  ! m   �  - - s k i p - z o o m l     ���� n      	
	  ;   
 o  ���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  �  l &&��������  ��  ��    l  &&����  
             set showTOSPane to ((parametersDictionary's valueForKey:"showTOSPane") as boolean)
             my logThis("showTOSPane: " & showTOSPane)
             if showTOSPane is false then set the end of setupSuppressionOptions to "--skip-tos"
                 � 
                           s e t   s h o w T O S P a n e   t o   ( ( p a r a m e t e r s D i c t i o n a r y ' s   v a l u e F o r K e y : " s h o w T O S P a n e " )   a s   b o o l e a n ) 
                           m y   l o g T h i s ( " s h o w T O S P a n e :   "   &   s h o w T O S P a n e ) 
                           i f   s h o w T O S P a n e   i s   f a l s e   t h e n   s e t   t h e   e n d   o f   s e t u p S u p p r e s s i o n O p t i o n s   t o   " - - s k i p - t o s " 
                            l &&��������  ��  ��    r  &4 l &0���� c  &0 l &.���� n &. I  '.������ 0 valueforkey_ valueForKey_ �� m  '*   �!!  s h o w T o u c h I D P a n e��  ��   o  &'���� ,0 parametersdictionary parametersDictionary��  ��   m  ./��
�� 
bool��  ��   o      ���� "0 showtouchidpane showTouchIDPane "#" n 5A$%$ I  6A��&���� 0 logthis logThis& '��' b  6=()( m  69** �++ " s h o w T o u c h I D P a n e :  ) o  9<���� "0 showtouchidpane showTouchIDPane��  ��  %  f  56# ,-, Z BV./����. = BG010 o  BE���� "0 showtouchidpane showTouchIDPane1 m  EF��
�� boovfals/ r  JR232 m  JM44 �55  - - s k i p - t o u c h i d3 l     6����6 n      787  ;  PQ8 o  MP���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  - 9:9 l WW��������  ��  ��  : ;<; r  We=>= l Wa?����? c  Wa@A@ l W_B����B n W_CDC I  X_��E���� 0 valueforkey_ valueForKey_E F��F m  X[GG �HH  s h o w S i r i P a n e��  ��  D o  WX���� ,0 parametersdictionary parametersDictionary��  ��  A m  _`��
�� 
bool��  ��  > o      ���� 0 showsiripane showSiriPane< IJI n frKLK I  gr��M���� 0 logthis logThisM N��N b  gnOPO m  gjQQ �RR  s h o w S i r i P a n e :  P o  jm���� 0 showsiripane showSiriPane��  ��  L  f  fgJ STS Z s�UV����U = sxWXW o  sv���� 0 showsiripane showSiriPaneX m  vw��
�� boovfalsV r  {�YZY m  {~[[ �\\  - - s k i p - s i r iZ l     ]����] n      ^_^  ;  ��_ o  ~����� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  T `a` l ����������  ��  ��  a bcb l ����de��  d  # added MAY 01-2017   e �ff & #   a d d e d   M A Y   0 1 - 2 0 1 7c ghg r  ��iji l ��k����k c  ��lml l ��n����n n ��opo I  ����q���� 0 valueforkey_ valueForKey_q r��r m  ��ss �tt   s h o w T r u e T o n e P a n e��  ��  p o  ������ ,0 parametersdictionary parametersDictionary��  ��  m m  ����
�� 
bool��  ��  j o      ���� $0 showtruetonepane showTrueTonePaneh uvu n ��wxw I  ����y���� 0 logthis logThisy z��z b  ��{|{ m  ��}} �~~ $ s h o w T r u e T o n e P a n e :  | o  ������ $0 showtruetonepane showTrueTonePane��  ��  x  f  ��v � Z ��������� = ����� o  ������ $0 showtruetonepane showTrueTonePane� m  ����
�� boovfals� r  ����� m  ���� ���   - - s k i p - t r u e - t o n e� l     ������ n      ���  ;  ��� o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� r  ����� l �������� c  ����� l �������� n ����� I  ��������� 0 valueforkey_ valueForKey_� ���� m  ���� ��� . s h o w M o v e F r o m A n d r o i d P a n e��  ��  � o  ������ ,0 parametersdictionary parametersDictionary��  ��  � m  ����
�� 
bool��  ��  � o      ���� 20 showmovefromandroidpane showMoveFromAndroidPane� ��� n ����� I  ��������� 0 logthis logThis� ���� b  ����� m  ���� ��� 2 s h o w M o v e F r o m A n d r o i d P a n e :  � o  ������ 20 showmovefromandroidpane showMoveFromAndroidPane��  ��  �  f  ��� ��� Z ��������� = ����� o  ������ 20 showmovefromandroidpane showMoveFromAndroidPane� m  ����
�� boovfals� r  ����� m  ���� ���  - - s k i p - a n d r o i d� l     ������ n      ���  ;  ��� o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l ����~�}�  �~  �}  � ��� r  ����� l ����|�{� c  ����� l ����z�y� n ����� I  ���x��w�x 0 valueforkey_ valueForKey_� ��v� m  ���� ��� & s h o w S c r e e n S a v e r P a n e�v  �w  � o  ���u�u ,0 parametersdictionary parametersDictionary�z  �y  � m  ���t
�t 
bool�|  �{  � o      �s�s *0 showscreensaverpane showScreenSaverPane� ��� n ���� I  ��r��q�r 0 logthis logThis� ��p� b  ���� m  ���� ��� * s h o w S c r e e n S a v e r P a n e :  � o  � �o�o *0 showscreensaverpane showScreenSaverPane�p  �q  �  f  ��� ��� Z ���n�m� = ��� o  	�l�l *0 showscreensaverpane showScreenSaverPane� m  	
�k
�k boovfals� r  ��� m  �� ��� & - - s k i p - s c r e e n - s a v e r� l     ��j�i� n      ���  ;  � o  �h�h 20 setupsuppressionoptions setupSuppressionOptions�j  �i  �n  �m  � ��� l �g�f�e�g  �f  �e  � ��� r  )��� l %��d�c� c  %��� l #��b�a� n #��� I  #�`��_�` 0 valueforkey_ valueForKey_� ��^� m  �� ��� $ s h o w T a p T o S e t u p P a n e�^  �_  � o  �]�] ,0 parametersdictionary parametersDictionary�b  �a  � m  #$�\
�\ 
bool�d  �c  � o      �[�[ (0 showtaptosetuppane showTapToSetupPane� ��� n *6��� I  +6�Z��Y�Z 0 logthis logThis� ��X� b  +2��� m  +.�� ��� ( s h o w T a p T o S e t u p P a n e :  � o  .1�W�W (0 showtaptosetuppane showTapToSetupPane�X  �Y  �  f  *+� ��� Z 7K���V�U� = 7<��� o  7:�T�T (0 showtaptosetuppane showTapToSetupPane� m  :;�S
�S boovfals� r  ?G��� m  ?B�� ��� & - - s k i p - t a p - t o - s e t u p� l     ��R�Q� n      � �  ;  EF  o  BE�P�P 20 setupsuppressionoptions setupSuppressionOptions�R  �Q  �V  �U  �  l LL�O�N�M�O  �N  �M    r  LZ l LV�L�K c  LV	 l LT
�J�I
 n LT I  MT�H�G�H 0 valueforkey_ valueForKey_ �F m  MP � : s h o w P h o n e N u m b e r P e r m i s s i o n P a n e�F  �G   o  LM�E�E ,0 parametersdictionary parametersDictionary�J  �I  	 m  TU�D
�D 
bool�L  �K   o      �C�C >0 showphonenumberpermissionpane showPhoneNumberPermissionPane  n [g I  \g�B�A�B 0 logthis logThis �@ b  \c m  \_ � > s h o w P h o n e N u m b e r P e r m i s s i o n P a n e :   o  _b�?�? >0 showphonenumberpermissionpane showPhoneNumberPermissionPane�@  �A    f  [\  Z h|�>�= = hm  o  hk�<�< >0 showphonenumberpermissionpane showPhoneNumberPermissionPane  m  kl�;
�; boovfals r  px!"! m  ps## �$$ < - - s k i p - p h o n e - n u m b e r - p e r m i s s i o n" l     %�:�9% n      &'&  ;  vw' o  sv�8�8 20 setupsuppressionoptions setupSuppressionOptions�:  �9  �>  �=   ()( l }}�7�6�5�7  �6  �5  ) *+* r  }�,-, l }�.�4�3. c  }�/0/ l }�1�2�11 n }�232 I  ~��04�/�0 0 valueforkey_ valueForKey_4 5�.5 m  ~�66 �77 $ s h o w H o m e B u t t o n P a n e�.  �/  3 o  }~�-�- ,0 parametersdictionary parametersDictionary�2  �1  0 m  ���,
�, 
bool�4  �3  - o      �+�+ (0 showhomebuttonpane showHomeButtonPane+ 898 n ��:;: I  ���*<�)�* 0 logthis logThis< =�(= b  ��>?> m  ��@@ �AA ( s h o w H o m e B u t t o n P a n e :  ? o  ���'�' (0 showhomebuttonpane showHomeButtonPane�(  �)  ;  f  ��9 BCB Z ��DE�&�%D = ��FGF o  ���$�$ (0 showhomebuttonpane showHomeButtonPaneG m  ���#
�# boovfalsE r  ��HIH m  ��JJ �KK $ - - s k i p - h o m e - b u t t o nI l     L�"�!L n      MNM  ;  ��N o  ��� �  20 setupsuppressionoptions setupSuppressionOptions�"  �!  �&  �%  C OPO l ������  �  �  P QRQ r  ��STS l ��U��U c  ��VWV l ��X��X n ��YZY I  ���[�� 0 valueforkey_ valueForKey_[ \�\ m  ��]] �^^ , s h o w W a t c h M i g r a t i o n P a n e�  �  Z o  ���� ,0 parametersdictionary parametersDictionary�  �  W m  ���
� 
bool�  �  T o      �� 00 showwatchmigrationpane showWatchMigrationPaneR _`_ n ��aba I  ���c�� 0 logthis logThisc d�d b  ��efe m  ��gg �hh 0 s h o w W a t c h M i g r a t i o n P a n e :  f o  ���� 00 showwatchmigrationpane showWatchMigrationPane�  �  b  f  ��` iji Z ��kl��k = ��mnm o  ���� 00 showwatchmigrationpane showWatchMigrationPanen m  ���
� boovfalsl r  ��opo m  ��qq �rr , - - s k i p - w a t c h - m i g r a t i o np l     s�
�	s n      tut  ;  ��u o  ���� 20 setupsuppressionoptions setupSuppressionOptions�
  �	  �  �  j vwv l ������  �  �  w xyx r  ��z{z l ��|��| c  ��}~} l ���� n ����� I  ��� ����  0 valueforkey_ valueForKey_� ���� m  ���� ��� 4 s h o w S i g n I n T o T V P r o v i d e r P a n e��  ��  � o  ������ ,0 parametersdictionary parametersDictionary�  �  ~ m  ����
�� 
bool�  �  { o      ���� 80 showsignintotvproviderpane showSignInToTVProviderPaney ��� n ����� I  ��������� 0 logthis logThis� ���� b  ����� m  ���� ��� 8 s h o w S i g n I n T o T V P r o v i d e r P a n e :  � o  ������ 80 showsignintotvproviderpane showSignInToTVProviderPane��  ��  �  f  ��� ��� Z �������� = � ��� o  ������ 80 showsignintotvproviderpane showSignInToTVProviderPane� m  ����
�� boovfals� r  ��� m  �� ��� $ - - s k i p - t v - p r o v i d e r� l     ������ n      ���  ;  	
� o  	���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l ��������  ��  ��  � ��� r  ��� l ������ c  ��� l ������ n ��� I  ������� 0 valueforkey_ valueForKey_� ���� m  �� ��� 0 s h o w T V H o m e S c r e e n S y n c P a n e��  ��  � o  ���� ,0 parametersdictionary parametersDictionary��  ��  � m  ��
�� 
bool��  ��  � o      ���� 40 showtvhomescreensyncpane showTVHomeScreenSyncPane� ��� n +��� I   +������� 0 logthis logThis� ���� b   '��� m   #�� ��� 4 s h o w T V H o m e S c r e e n S y n c P a n e :  � o  #&���� 40 showtvhomescreensyncpane showTVHomeScreenSyncPane��  ��  �  f   � ��� Z ,@������� = ,1��� o  ,/���� 40 showtvhomescreensyncpane showTVHomeScreenSyncPane� m  /0��
�� boovfals� r  4<��� m  47�� ��� 4 - - s k i p - t v - h o m e - s c r e e n - s y n c� l     ������ n      ���  ;  :;� o  7:���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l AA��������  ��  ��  � ��� r  AO��� l AK������ c  AK��� l AI������ n AI��� I  BI������� 0 valueforkey_ valueForKey_� ���� m  BE�� ���  s h o w T V R o o m P a n e��  ��  � o  AB���� ,0 parametersdictionary parametersDictionary��  ��  � m  IJ��
�� 
bool��  ��  � o      ����  0 showtvroompane showTVRoomPane� ��� n P\��� I  Q\������� 0 logthis logThis� ���� b  QX��� m  QT�� ���   s h o w T V R o o m P a n e :  � o  TW����  0 showtvroompane showTVRoomPane��  ��  �  f  PQ� ��� Z ]q������� = ]b��� o  ]`����  0 showtvroompane showTVRoomPane� m  `a��
�� boovfals� r  em��� m  eh�� ��� : - - s k i p - w h e r e - i s - t h i s - a p p l e - t v� l     ������ n      ���  ;  kl� o  hk���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l rr��������  ��  ��  � ��� l rr������  � O I Append the language and locale parameters to the end of the skipped list   � ��� �   A p p e n d   t h e   l a n g u a g e   a n d   l o c a l e   p a r a m e t e r s   t o   t h e   e n d   o f   t h e   s k i p p e d   l i s t� ��� l rr������  � M G the script library will create a space-delimited string from the lists   � ��� �   t h e   s c r i p t   l i b r a r y   w i l l   c r e a t e   a   s p a c e - d e l i m i t e d   s t r i n g   f r o m   t h e   l i s t s� ��� Z  r�������� F  r���� l rw������ = rw��� o  ru���� $0 showlanguagepane showLanguagePane� m  uv��
�� boovfals��  ��  � l z ����  = z o  z}���� &0 shouldsetlanguage shouldSetLanguage m  }~��
�� boovtrue��  ��  � k  ��  r  �� I  �������� R0 'derivelanguagecodematchinglanguagetitle 'deriveLanguageCodeMatchingLanguageTitle 	��	 o  ������ 40 languagecodedisplaytitle languageCodeDisplayTitle��  ��   o      ���� (0 targetlanguagecode targetLanguageCode 

 n �� I  �������� 0 logthis logThis �� b  �� m  �� � ( t a r g e t L a n g u a g e C o d e :   o  ������ (0 targetlanguagecode targetLanguageCode��  ��    f  ��  r  �� m  �� �  - - l a n g u a g e l     ���� n        ;  �� o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��   �� r  �� o  ������ (0 targetlanguagecode targetLanguageCode l      ����  n      !"!  ;  ��" o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  ��  � #$# l ����������  ��  ��  $ %&% Z  ��'(����' F  ��)*) l ��+����+ = ��,-, o  ������  0 showregionpane showRegionPane- m  ����
�� boovfals��  ��  * l ��.����. = ��/0/ o  ������ "0 shouldsetregion shouldSetRegion0 m  ����
�� boovtrue��  ��  ( k  ��11 232 r  ��454 I  ����6���� J0 #derivelocalecodematchinglocaletitle #deriveLocaleCodeMatchingLocaleTitle6 7��7 o  ������ 00 localecodedisplaytitle localeCodeDisplayTitle��  ��  5 o      ���� $0 targetlocalecode targetLocaleCode3 898 n ��:;: I  ����<���� 0 logthis logThis< =��= b  ��>?> m  ��@@ �AA $ t a r g e t L o c a l e C o d e :  ? o  ������ $0 targetlocalecode targetLocaleCode��  ��  ;  f  ��9 BCB r  ��DED m  ��FF �GG  - - l o c a l eE l     H����H n      IJI  ;  ��J o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��  C K��K r  ��LML o  ������ $0 targetlocalecode targetLocaleCodeM l     N����N n      OPO  ;  ��P o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  ��  & QRQ l ���������  ��  �  R STS l  ���~UV�~  U   EXECUTE COMMAND    V �WW "   E X E C U T E   C O M M A N D  T XYX O  � Z[Z I  �}\�|�} :0 cnfgpreparespecifieddevices CNFGprepareSpecifiedDevices\ ]^] o  �{�{ 0 
theseecids 
theseECIDs^ _`_ o  �z�z 0 shouldusemdm shouldUseMDM` aba o  �y�y (0 mdmcertificatepath MDMCertificatePathb cdc o  �x�x 0 enrollmenturl enrollmentURLd efe o  �w�w 00 shouldsupervisedevices shouldSuperviseDevicesf ghg o  �v�v 00 allowpairingwithitunes allowPairingWithiTunesh iji o  �u�u 20 hostcertificatefilepath hostCertificateFilePathj klk o  �t�t $0 organizationname organizationNamel mnm o  �s�s *0 organizationaddress organizationAddressn opo o  �r�r 00 organizationdepartment organizationDepartmentp qrq o  �q�q &0 organizationphone organizationPhoner sts o  �p�p &0 organizationemail organizationEmailt u�ou o  �n�n 20 setupsuppressionoptions setupSuppressionOptions�o  �|  [ 4  ���mv
�m 
scptv m  ��ww �xx * C o n f i g u r a t i o n   U t i l i t yY yzy l !!�l�k�j�l  �k  �j  z {|{ l  !!�i}~�i  } ( " PASS DEVICE ECIDs TO NEXT ACTION    ~ � D   P A S S   D E V I C E   E C I D s   T O   N E X T   A C T I O N  | ��� L  !#�� o  !"�h�h 0 
theseecids 
theseECIDs� ��g� l $$�f�e�d�f  �e  �d  �g   Y R      �c��
�c .ascrerr ****      � ****� o      �b�b (0 errormessagestring errorMessageString� �a��`
�a 
errn� o      �_�_ 0 errornumber errorNumber�`   Z k  -`�� ��� n -5��� I  .5�^��]�^ 0 logthis logThis� ��\� o  .1�[�[ (0 errormessagestring errorMessageString�\  �]  �  f  -.� ��Z� Z  6`���Y�� > 6=��� o  69�X�X 0 errornumber errorNumber� m  9<�W�W��� k  @S�� ��� r  @N��� K  @H�� �V��U�V 60 nsapplescripterrormessage NSAppleScriptErrorMessage� o  CF�T�T (0 errormessagestring errorMessageString�U  � n      ��� 1  IM�S
�S 
pcnt� o  HI�R�R 0 errorref errorRef� ��Q� L  OS�� m  OR�P
�P 
msng�Q  �Y  � R  V`�O�N�
�O .ascrerr ****      � ****�N  � �M��L
�M 
errn� m  Z]�K�K���L  �Z  ��   E ��� l     �J�I�H�J  �I  �H  � ��� l      �G���G  � = 7 HANDLER CALLED BEFORE ACTION VIEW APPEARS IN WORKFLOW    � ��� n   H A N D L E R   C A L L E D   B E F O R E   A C T I O N   V I E W   A P P E A R S   I N   W O R K F L O W  � ��� i    ��� I      �F�E�D�F 
0 opened  �E  �D  � k     �� ��� n    ��� I    �C��B�C 0 logthis logThis� ��A� m    �� ���  o p e n e d ( )�A  �B  �  f     � ��@� I    �?�>�=�? &0 populatecodemenus populateCodeMenus�>  �=  �@  � ��� l     �<�;�:�<  �;  �:  � ��� l      �9���9  � \ V HANDLER CALLED TO STORE THE CURRENT SELECTIONS. CALLED WHEN WORKFLOW IS SAVED OR RUN    � ��� �   H A N D L E R   C A L L E D   T O   S T O R E   T H E   C U R R E N T   S E L E C T I O N S .   C A L L E D   W H E N   W O R K F L O W   I S   S A V E D   O R   R U N  � ��� i     ��� I      �8�7�6�8 $0 updateparameters updateParameters�7  �6  � k     2�� ��� n    ��� I    �5��4�5 0 logthis logThis� ��3� m    �� ��� $ u p d a t e P a r a m e t e r s ( )�3  �4  �  f     � ��� l   �2���2  � I C write the current value of the locale popup menu to the parameters   � ��� �   w r i t e   t h e   c u r r e n t   v a l u e   o f   t h e   l o c a l e   p o p u p   m e n u   t o   t h e   p a r a m e t e r s� ��� r    ��� n   ��� o    �1�1 *0 titleofselecteditem titleOfSelectedItem� o    �0�0 (0 languagespopupmenu languagesPopupMenu� o      �/�/ ,0 currentlanguagetitle currentLanguageTitle� ��� r    ��� n   ��� I    �.�-�,�. 0 
parameters  �-  �,  �  f    � l     ��+�*� o      �)�) ,0 parametersdictionary parametersDictionary�+  �*  � ��� n    ��� I     �(��'�( $0 setvalue_forkey_ setValue_forKey_� ��� o    �&�& ,0 currentlanguagetitle currentLanguageTitle� ��%� m    �� ��� 0 l a n g u a g e C o d e D i s p l a y T i t l e�%  �'  � o    �$�$ ,0 parametersdictionary parametersDictionary� ��� l  ! !�#���#  � I C write the current value of the locale popup menu to the parameters   � ��� �   w r i t e   t h e   c u r r e n t   v a l u e   o f   t h e   l o c a l e   p o p u p   m e n u   t o   t h e   p a r a m e t e r s� ��� r   ! *��� n  ! (��� o   & (�"�" *0 titleofselecteditem titleOfSelectedItem� o   ! &�!�! $0 localespopupmenu localesPopupMenu� o      � �  (0 currentlocaletitle currentLocaleTitle� ��� n  + 2��� I   , 2���� $0 setvalue_forkey_ setValue_forKey_� ��� o   , -�� (0 currentlocaletitle currentLocaleTitle� ��� m   - .�� ��� , l o c a l e C o d e D i s p l a y T i t l e�  �  � o   + ,�� ,0 parametersdictionary parametersDictionary�  � ��� l     ����  �  �  � ��� l      ����  � 1 + SAVE AN APPLESCRIPT LIST TO PROPERTY LIST    � �   V   S A V E   A N   A P P L E S C R I P T   L I S T   T O   P R O P E R T Y   L I S T  �  i   ! $ I      ��� *0 savelist_toplistat_ saveList_toPlistAt_  o      �� 0 thelist theList � o      �� 0 thepath thePath�  �   k     +		 

 r     
 n     I    ��� "0 arraywitharray_ arrayWithArray_ � o    �� 0 thelist theList�  �   n     o    �� 0 nsarray NSArray m     �
� misccura o      �
�
 0 thearray theArray  r     n    I    �	��	 &0 stringwithstring_ stringWithString_ � o    �� 0 thepath thePath�  �   n    o    �� 0 nsstring NSString m    �
� misccura o      �� 0 thepath thePath  r     !  n   "#" I    ��� � <0 stringbyexpandingtildeinpath stringByExpandingTildeInPath�  �   # o    ���� 0 thepath thePath! o      ���� 0 thepath thePath $%$ n   %&'& I    %��(���� 20 writetofile_atomically_ writeToFile_atomically_( )*) o     ���� 0 thepath thePath* +��+ m     !��
�� boovtrue��  ��  ' o    ���� 0 thearray theArray% ,��, l  & +-./- I  & +��0��
�� .ascrcmnt****      � ****0 1   & '��
�� 
rslt��  .    so we can see if it saved   / �11 4   s o   w e   c a n   s e e   i f   i t   s a v e d��   232 l     ��������  ��  ��  3 454 l      ��67��  6 0 * READ A PROPERTY LIST AS APPLESCRIPT LIST    7 �88 T   R E A D   A   P R O P E R T Y   L I S T   A S   A P P L E S C R I P T   L I S T  5 9:9 i   % (;<; I      ��=���� 0 readplistat_ readPlistAt_= >��> o      ���� 0 thepath thePath��  ��  < k     "?? @A@ r     
BCB n    DED I    ��F���� &0 stringwithstring_ stringWithString_F G��G o    ���� 0 thepath thePath��  ��  E n    HIH o    ���� 0 nsstring NSStringI m     ��
�� misccuraC o      ���� 0 thepath thePathA JKJ r    LML n   NON I    �������� <0 stringbyexpandingtildeinpath stringByExpandingTildeInPath��  ��  O o    ���� 0 thepath thePathM o      ���� 0 thepath thePathK PQP r    RSR n   TUT I    ��V���� 40 arraywithcontentsoffile_ arrayWithContentsOfFile_V W��W o    ���� 0 thepath thePath��  ��  U n   XYX o    ���� 0 nsarray NSArrayY m    ��
�� misccuraS o      ���� 0 thearray theArrayQ Z��Z L    "[[ c    !\]\ o    ���� 0 thearray theArray] m     ��
�� 
list��  : ^_^ l     ��������  ��  ��  _ `a` i   ) ,bcb I      ��d���� 0 	getutifor 	getUTIFord e��e o      ���� 0 thispath thisPath��  ��  c k     Dff ghg r     
iji n    klk I    ��m���� $0 fileurlwithpath_ fileURLWithPath_m n��n o    ���� 0 thispath thisPath��  ��  l n    opo o    ���� 	0 NSURL  p m     ��
�� misccuraj o      ���� 0 annsurl anNSURLh qrq r    +sts n   uvu I    ��w���� @0 getresourcevalue_forkey_error_ getResourceValue_forKey_error_w xyx l   z����z m    ��
�� 
obj ��  ��  y {|{ l   }����} n   ~~ o    ���� 00 nsurltypeidentifierkey NSURLTypeIdentifierKey m    ��
�� misccura��  ��  | ���� l   ������ m    ��
�� 
obj ��  ��  ��  ��  v o    ���� 0 annsurl anNSURLt J      �� ��� o      ���� 0 	theresult 	theResult� ��� o      ���� 0 theuti theUTI� ���� o      ���� 0 theerror theError��  r ��� Z  , ?������� H   , .�� o   , -���� 0 	theresult 	theResult� R   1 ;�����
�� .ascrerr ****      � ****� l  3 :������ c   3 :��� n  3 8��� I   4 8�������� ,0 localizeddescription localizedDescription��  ��  � o   3 4���� 0 theerror theError� m   8 9��
�� 
ctxt��  ��  ��  ��  ��  � ���� L   @ D�� c   @ C��� o   @ A���� 0 theuti theUTI� m   A B��
�� 
ctxt��  a ��� l     ��������  ��  ��  � ��� i   - 0��� I      �������� &0 populatecodemenus populateCodeMenus��  ��  � k     ��� ��� l     ������  � 4 . get the display titles for the language codes   � ��� \   g e t   t h e   d i s p l a y   t i t l e s   f o r   t h e   l a n g u a g e   c o d e s� ��� r     ��� I     �������� 00 retrievelanguagetitles retrieveLanguageTitles��  ��  � o      ���� 60 languagecodesdisplaynames languageCodesDisplayNames� ��� r    ��� I    ������� &0 sortlistofstrings sortListOfStrings� ���� o   	 
���� 60 languagecodesdisplaynames languageCodesDisplayNames��  ��  � o      ���� 60 languagecodesdisplaynames languageCodesDisplayNames� ��� l   ������  � 2 , clear and set the values for the popup menu   � ��� X   c l e a r   a n d   s e t   t h e   v a l u e s   f o r   t h e   p o p u p   m e n u� ��� O   ��� I    ��������  0 removeallitems removeAllItems��  ��  � o    ���� (0 languagespopupmenu languagesPopupMenu� ��� O    /��� I   ( .������� *0 additemswithtitles_ addItemsWithTitles_� ���� o   ) *���� 60 languagecodesdisplaynames languageCodesDisplayNames��  ��  � o     %���� (0 languagespopupmenu languagesPopupMenu� ��� l  0 0������  �    select the stored default   � ��� 4   s e l e c t   t h e   s t o r e d   d e f a u l t� ��� r   0 7��� n  0 5��� I   1 5�������� 0 
parameters  ��  ��  �  f   0 1� l     ������ o      ���� ,0 parametersdictionary parametersDictionary��  ��  � ��� r   8 B��� l  8 @������ c   8 @��� l  8 >������ n  8 >��� I   9 >������� 0 valueforkey_ valueForKey_� ��� m   9 :�� ��� 0 l a n g u a g e C o d e D i s p l a y T i t l e�  ��  � o   8 9�~�~ ,0 parametersdictionary parametersDictionary��  ��  � m   > ?�}
�} 
TEXT��  ��  � o      �|�| 40 languagecodedisplaytitle languageCodeDisplayTitle� ��� Z   C h���{�z� >  C F��� o   C D�y�y 40 languagecodedisplaytitle languageCodeDisplayTitle� m   D E�� ���  � Q   I d���x� O  L [��� I   T Z�w��v�w ,0 selectitemwithtitle_ selectItemWithTitle_� ��u� o   U V�t�t 40 languagecodedisplaytitle languageCodeDisplayTitle�u  �v  � o   L Q�s�s (0 languagespopupmenu languagesPopupMenu� R      �r�q�p
�r .ascrerr ****      � ****�q  �p  �x  �{  �z  � ��� l  i i�o�n�m�o  �n  �m  � ��� l  i i�l���l  � 2 , get the display titles for the locale codes   � ��� X   g e t   t h e   d i s p l a y   t i t l e s   f o r   t h e   l o c a l e   c o d e s� ��� r   i p��� I   i n�k�j�i�k ,0 retrievelocaletitles retrieveLocaleTitles�j  �i  � o      �h�h 20 localecodesdisplaynames localeCodesDisplayNames� ��� r   q y��� I   q w�g��f�g &0 sortlistofstrings sortListOfStrings� ��e� o   r s�d�d 20 localecodesdisplaynames localeCodesDisplayNames�e  �f  � o      �c�c 20 localecodesdisplaynames localeCodesDisplayNames� ��� l  z z�b���b  � 2 , clear and set the values for the popup menu   � ��� X   c l e a r   a n d   s e t   t h e   v a l u e s   f o r   t h e   p o p u p   m e n u� ��� O  z ���� I   � ��a�`�_�a  0 removeallitems removeAllItems�`  �_  � o   z �^�^ $0 localespopupmenu localesPopupMenu� ��� O  � �	 		  I   � ��]	�\�] *0 additemswithtitles_ addItemsWithTitles_	 	�[	 o   � ��Z�Z 20 localecodesdisplaynames localeCodesDisplayNames�[  �\  	 o   � ��Y�Y $0 localespopupmenu localesPopupMenu� 			 l  � ��X		�X  	    select the stored default   	 �		 4   s e l e c t   t h e   s t o r e d   d e f a u l t	 			
		 r   � �			 l  � �	�W�V	 c   � �			 l  � �	�U�T	 n  � �			 I   � ��S	�R�S 0 valueforkey_ valueForKey_	 	�Q	 m   � �		 �		 , l o c a l e C o d e D i s p l a y T i t l e�Q  �R  	 o   � ��P�P ,0 parametersdictionary parametersDictionary�U  �T  	 m   � ��O
�O 
TEXT�W  �V  	 o      �N�N 00 localecodedisplaytitle localeCodeDisplayTitle	
 			 Z   � �		�M�L	 >  � �			 o   � ��K�K 00 localecodedisplaytitle localeCodeDisplayTitle	 m   � �		 �		  	 Q   � �		 �J	 O  � �	!	"	! I   � ��I	#�H�I ,0 selectitemwithtitle_ selectItemWithTitle_	# 	$�G	$ o   � ��F�F 00 localecodedisplaytitle localeCodeDisplayTitle�G  �H  	" o   � ��E�E $0 localespopupmenu localesPopupMenu	  R      �D�C�B
�D .ascrerr ****      � ****�C  �B  �J  �M  �L  	 	%�A	% l  � ��@�?�>�@  �?  �>  �A  � 	&	'	& l     �=�<�;�=  �<  �;  	' 	(	)	( i   1 4	*	+	* I      �:	,�9�: &0 sortlistofstrings sortListOfStrings	, 	-�8	- o      �7�7 0 
sourcelist 
sourceList�8  �9  	+ k     	.	. 	/	0	/ l     �6	1	2�6  	1 1 + sorts a passed AppleScript list of strings   	2 �	3	3 V   s o r t s   a   p a s s e d   A p p l e S c r i p t   l i s t   o f   s t r i n g s	0 	4	5	4 l     �5	6	7�5  	6 < 6 create a Cocoa array from the passed AppleScript list   	7 �	8	8 l   c r e a t e   a   C o c o a   a r r a y   f r o m   t h e   p a s s e d   A p p l e S c r i p t   l i s t	5 	9	:	9 r     
	;	<	; n    	=	>	= I    �4	?�3�4 "0 arraywitharray_ arrayWithArray_	? 	@�2	@ o    �1�1 0 
sourcelist 
sourceList�2  �3  	> n    	A	B	A o    �0�0 0 nsarray NSArray	B m     �/
�/ misccura	< l     	C�.�-	C o      �,�, 0 
cocoaarray 
CocoaArray�.  �-  	: 	D	E	D l   �+	F	G�+  	F   sort the Cocoa array   	G �	H	H *   s o r t   t h e   C o c o a   a r r a y	E 	I	J	I r    	K	L	K n   	M	N	M I    �*	O�)�* 60 sortedarrayusingselector_ sortedArrayUsingSelector_	O 	P�(	P m    	Q	Q �	R	R 2 l o c a l i z e d S t a n d a r d C o m p a r e :�(  �)  	N o    �'�' 0 
cocoaarray 
CocoaArray	L l     	S�&�%	S o      �$�$ 0 sorteditems sortedItems�&  �%  	J 	T	U	T l   �#	V	W�#  	V < 6 return the Cocoa array coerced to an AppleScript list   	W �	X	X l   r e t u r n   t h e   C o c o a   a r r a y   c o e r c e d   t o   a n   A p p l e S c r i p t   l i s t	U 	Y�"	Y L    	Z	Z l   	[�!� 	[ c    	\	]	\ o    �� 0 sorteditems sortedItems	] m    �
� 
list�!  �   �"  	) 	^	_	^ l     ����  �  �  	_ 	`	a	` i   5 8	b	c	b I      ���� .0 retrievelanguagecodes retrieveLanguageCodes�  �  	c k     !	d	d 	e	f	e r     	g	h	g c     	i	j	i l    		k��	k n    		l	m	l n   		n	o	n I    	���� 0 resourcepath resourcePath�  �  	o I    ���� 
0 bundle  �  �  	m  f     �  �  	j m   	 
�
� 
TEXT	h o      �� (0 resourcefolderpath resourceFolderPath	f 	p	q	p r    	r	s	r b    	t	u	t b    	v	w	v o    �� (0 resourcefolderpath resourceFolderPath	w m    	x	x �	y	y  /	u m    	z	z �	{	{ < S u p p o r t e d   L a n g u a g e   C o d e s . p l i s t	s o      �� >0 languagecodespropertylistpath languageCodesPropertyListPath	q 	|	}	| r    	~		~ n   	�	�	� I    �	��
� 0 readplistat_ readPlistAt_	� 	��		� o    �� >0 languagecodespropertylistpath languageCodesPropertyListPath�	  �
  	�  g    	 o      �� 0 languagecodes languageCodes	} 	��	� L    !	�	� o     �� 0 languagecodes languageCodes�  	a 	�	�	� l     ����  �  �  	� 	�	�	� i   9 <	�	�	� I      �� ��� 00 retrievelanguagetitles retrieveLanguageTitles�   ��  	� k     	�	� 	�	�	� r     	�	�	� I     �������� .0 retrievelanguagecodes retrieveLanguageCodes��  ��  	� o      ���� 0 languagecodes languageCodes	� 	�	�	� r    	�	�	� I    ��	����� 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes	� 	���	� o   	 
���� 0 languagecodes languageCodes��  ��  	� o      ���� 60 languagecodesdisplaynames languageCodesDisplayNames	� 	���	� L    	�	� o    ���� 60 languagecodesdisplaynames languageCodesDisplayNames��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� i   = @	�	�	� I      �������� *0 retrievelocalecodes retrieveLocaleCodes��  ��  	� k     !	�	� 	�	�	� r     	�	�	� c     	�	�	� l    		�����	� n    		�	�	� n   		�	�	� I    	�������� 0 resourcepath resourcePath��  ��  	� I    �������� 
0 bundle  ��  ��  	�  f     ��  ��  	� m   	 
��
�� 
TEXT	� o      ���� (0 resourcefolderpath resourceFolderPath	� 	�	�	� r    	�	�	� b    	�	�	� b    	�	�	� o    ���� (0 resourcefolderpath resourceFolderPath	� m    	�	� �	�	�  /	� m    	�	� �	�	� 8 S u p p o r t e d   L o c a l e   C o d e s . p l i s t	� o      ���� :0 localecodespropertylistpath localeCodesPropertyListPath	� 	�	�	� r    	�	�	� n   	�	�	� I    ��	����� 0 readplistat_ readPlistAt_	� 	���	� o    ���� :0 localecodespropertylistpath localeCodesPropertyListPath��  ��  	�  g    	� o      ���� 0 localecodes localeCodes	� 	���	� L    !	�	� o     ���� 0 localecodes localeCodes��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� i   A D	�	�	� I      �������� ,0 retrievelocaletitles retrieveLocaleTitles��  ��  	� k     	�	� 	�	�	� r     	�	�	� I     �������� *0 retrievelocalecodes retrieveLocaleCodes��  ��  	� o      ���� 0 localecodes localeCodes	� 	�	�	� r    	�	�	� I    ��	����� 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes	� 	���	� o   	 
���� 0 localecodes localeCodes��  ��  	� o      ���� 20 localecodesdisplaynames localeCodesDisplayNames	� 	���	� L    	�	� o    ���� 20 localecodesdisplaynames localeCodesDisplayNames��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� i   E H	�	�	� I      ��	����� R0 'derivelanguagecodematchinglanguagetitle 'deriveLanguageCodeMatchingLanguageTitle	� 	���	� o      ���� &0 thislanguagetitle thisLanguageTitle��  ��  	� k     "	�	� 	�	�	� l     ��	�	���  	� e _ this routine works because the titles list is dynamically derived from the language codes list   	� �	�	� �   t h i s   r o u t i n e   w o r k s   b e c a u s e   t h e   t i t l e s   l i s t   i s   d y n a m i c a l l y   d e r i v e d   f r o m   t h e   l a n g u a g e   c o d e s   l i s t	� 	�	�	� r     	�	�	� I     �������� .0 retrievelanguagecodes retrieveLanguageCodes��  ��  	� o      ���� 0 languagecodes languageCodes	� 	�	�	� r    	�	�	� I    �������� 00 retrievelanguagetitles retrieveLanguageTitles��  ��  	� o      ����  0 languagetitles languageTitles	� 	�	�	� r    	�	�	� c    	�	�	� l   	�����	� n   	�	�	� I    ��	����� "0 indexof_inlist_ indexOf_inList_	� 	�	�	� o    ���� &0 thislanguagetitle thisLanguageTitle	� 	���	� o    ����  0 languagetitles languageTitles��  ��  	�  g    ��  ��  	� m    ��
�� 
long	� o      ���� 0 	itemindex 	itemIndex	� 	���	� L    "	�	� l   !	�����	� n    !	�	�	� 4     ��	�
�� 
cobj	� o    ���� 0 	itemindex 	itemIndex	� o    ���� 0 languagecodes languageCodes��  ��  ��  	� 	�	�	� l     ��������  ��  ��  	� 	�
 	� i   I L


 I      ��
���� J0 #derivelocalecodematchinglocaletitle #deriveLocaleCodeMatchingLocaleTitle
 
��
 o      ���� "0 thislocaletitle thisLocaleTitle��  ��  
 k     "

 


 l     ��

	��  
 c ] this routine works because the titles list is dynamically derived from the locale codes list   
	 �



 �   t h i s   r o u t i n e   w o r k s   b e c a u s e   t h e   t i t l e s   l i s t   i s   d y n a m i c a l l y   d e r i v e d   f r o m   t h e   l o c a l e   c o d e s   l i s t
 


 r     


 I     �������� *0 retrievelocalecodes retrieveLocaleCodes��  ��  
 o      ���� 0 localecodes localeCodes
 


 r    


 I    �������� ,0 retrievelocaletitles retrieveLocaleTitles��  ��  
 o      ���� 0 localetitles localeTitles
 


 r    


 c    


 l   
����
 n   


 I    ��
���� "0 indexof_inlist_ indexOf_inList_
 


 o    ���� "0 thislocaletitle thisLocaleTitle
 
��
 o    ���� 0 localetitles localeTitles��  ��  
  g    ��  ��  
 m    ��
�� 
long
 o      ���� 0 	itemindex 	itemIndex
 
 ��
  L    "
!
! l   !
"����
" n    !
#
$
# 4     ��
%
�� 
cobj
% o    ���� 0 	itemindex 	itemIndex
$ o    ���� 0 localecodes localeCodes��  ��  ��  
  
&
'
& l     ��������  ��  ��  
' 
(
)
( l      ��
*
+��  
* ; 5 DERIVE THE OFFSET OF AN ITEM IN AN APPLESCRIPT LIST    
+ �
,
, j   D E R I V E   T H E   O F F S E T   O F   A N   I T E M   I N   A N   A P P L E S C R I P T   L I S T  
) 
-
.
- i   M P
/
0
/ I      ��
1���� "0 indexof_inlist_ indexOf_inList_
1 
2
3
2 o      ���� 0 avalue aValue
3 
4��
4 o      ���� 0 thelist theList��  ��  
0 k     %
5
5 
6
7
6 r     

8
9
8 n    
:
;
: I    ��
<���� "0 arraywitharray_ arrayWithArray_
< 
=��
= o    �� 0 thelist theList��  ��  
; n    
>
?
> o    �~�~ 0 nsarray NSArray
? m     �}
�} misccura
9 o      �|�| 0 thearray theArray
7 
@
A
@ r    
B
C
B n   
D
E
D I    �{
F�z�{  0 indexofobject_ indexOfObject_
F 
G�y
G o    �x�x 0 avalue aValue�y  �z  
E o    �w�w 0 thearray theArray
C o      �v�v 0 theindex theIndex
A 
H�u
H Z    %
I
J�t
K
I =    
L
M
L o    �s�s 0 theindex theIndex
M n   
N
O
N o    �r�r 0 
nsnotfound 
NSNotFound
O m    �q
�q misccura
J L    
P
P m    �p�p  �t  
K L   ! %
Q
Q l  ! $
R�o�n
R [   ! $
S
T
S o   ! "�m�m 0 theindex theIndex
T m   " #�l�l �o  �n  �u  
. 
U
V
U l     �k�j�i�k  �j  �i  
V 
W
X
W l      �h
Y
Z�h  
Y C = DERIVE THE DISPLAY NAMES FOR LOCALE/COUNTRY/LANGUAGES CODES    
Z �
[
[ z   D E R I V E   T H E   D I S P L A Y   N A M E S   F O R   L O C A L E / C O U N T R Y / L A N G U A G E S   C O D E S  
X 
\
]
\ i   Q T
^
_
^ I      �g
`�f�g 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes
` 
a�e
a o      �d�d 0 
thesecodes 
theseCodes�e  �f  
_ k     >
b
b 
c
d
c r     
e
f
e J     �c�c  
f l     
g�b�a
g o      �`�` ,0 displaynamesforcodes displayNamesForCodes�b  �a  
d 
h
i
h r    
j
k
j n   
l
m
l I    �_�^�]�_ 0 currentlocale currentLocale�^  �]  
m n   
n
o
n o    �\�\ 0 nslocale NSLocale
o m    �[
�[ misccura
k o      �Z�Z 0 
thislocale 
thisLocale
i 
p
q
p Y    ;
r�Y
s
t�X
r k    6
u
u 
v
w
v r    #
x
y
x n    !
z
{
z 4    !�W
|
�W 
cobj
| o     �V�V 0 i  
{ o    �U�U 0 
thesecodes 
theseCodes
y o      �T�T 0 thiscode thisCode
w 
}
~
} r   $ 1

�
 c   $ /
�
�
� l  $ -
��S�R
� n  $ -
�
�
� I   % -�Q
��P�Q 40 displaynameforkey_value_ displayNameForKey_value_
� 
�
�
� l  % (
��O�N
� n  % (
�
�
� o   & (�M�M (0 nslocaleidentifier NSLocaleIdentifier
� m   % &�L
�L misccura�O  �N  
� 
��K
� o   ( )�J�J 0 thiscode thisCode�K  �P  
� o   $ %�I�I 0 
thislocale 
thisLocale�S  �R  
� m   - .�H
�H 
TEXT
� o      �G�G "0 thisdisplayname thisDisplayName
~ 
��F
� r   2 6
�
�
� o   2 3�E�E "0 thisdisplayname thisDisplayName
� l     
��D�C
� n      
�
�
�  ;   4 5
� o   3 4�B�B ,0 displaynamesforcodes displayNamesForCodes�D  �C  �F  �Y 0 i  
s m    �A�A 
t l   
��@�?
� I   �>
��=
�> .corecnte****       ****
� o    �<�< 0 
thesecodes 
theseCodes�=  �@  �?  �X  
q 
��;
� L   < >
�
� o   < =�:�: ,0 displaynamesforcodes displayNamesForCodes�;  
] 
�
�
� l     �9�8�7�9  �8  �7  
� 
�
�
� i   U X
�
�
� I      �6
��5�6 0 logthis logThis
� 
��4
� o      �3�3 0 	itemtolog 	itemToLog�4  �5  
� Z     
�
��2�1
� =    
�
�
� o     �0�0 0 loggingstatus loggingStatus
� m    �/
�/ boovtrue
� O   
 
�
�
� I   �.
��-
�. .ascrcmnt****      � ****
� l   
��,�+
� b    
�
�
� m    
�
� �
�
� F A C T I O N :   P r e p a r e   C o n n e c t e d   D e v i c e s :  
� o    �*�* 0 	itemtolog 	itemToLog�,  �+  �-  
� m   
 �)
�) misccura�2  �1  
� 
�
�
� l     �(�'�&�(  �'  �&  
� 
�
�
� l     �%
�
��%  
�   LOCALIZATION ROUTINE   
� �
�
� *   L O C A L I Z A T I O N   R O U T I N E
� 
�
�
� i   Y \
�
�
� I      �$
��#�$ 40 getlocalizedstringforkey getLocalizedStringForKey
� 
��"
� 1      �!
�! 
kMsg�"  �#  
� k     
�
� 
�
�
� r     
�
�
� b     	
�
�
� b     
�
�
� o     � �  .0 actionidentiferstring actionIdentiferString
� m    
�
� �
�
�  -
� 1    �
� 
kMsg
� 1      �
� 
kMsg
� 
��
� L    
�
� c    
�
�
� n   
�
�
� l   
���
� n   
�
�
� I    �
��� H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_
� 
�
�
� 1    �
� 
kMsg
� 
�
�
� l   
���
� m    �
� 
msng�  �  
� 
��
� l   
���
� m    �
� 
msng�  �  �  �  
� I    ���� 
0 bundle  �  �  �  �  
�  f    
� m    �
� 
utxt�  
� 
��
� l     ��
�	�  �
  �	  �    
��
� l     ����  �  �  �       �
�
��  
� �� 60 prepare_connected_devices Prepare_Connected_Devices
� � 
�
�� 60 prepare_connected_devices Prepare_Connected_Devices
� 
�
� �� 
�
� misccura
�  
pcls
� �
�
�  A M B u n d l e A c t i o n
� ��
��������� >
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
���  
� ����������������������������������������������
�� 
pare�� 0 loggingstatus loggingStatus�� (0 languagespopupmenu languagesPopupMenu�� $0 localespopupmenu localesPopupMenu�� .0 actionidentiferstring actionIdentiferString�� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�� 
0 opened  �� $0 updateparameters updateParameters�� *0 savelist_toplistat_ saveList_toPlistAt_�� 0 readplistat_ readPlistAt_�� 0 	getutifor 	getUTIFor�� &0 populatecodemenus populateCodeMenus�� &0 sortlistofstrings sortListOfStrings�� .0 retrievelanguagecodes retrieveLanguageCodes�� 00 retrievelanguagetitles retrieveLanguageTitles�� *0 retrievelocalecodes retrieveLocaleCodes�� ,0 retrievelocaletitles retrieveLocaleTitles�� R0 'derivelanguagecodematchinglanguagetitle 'deriveLanguageCodeMatchingLanguageTitle�� J0 #derivelocalecodematchinglocaletitle #deriveLocaleCodeMatchingLocaleTitle�� "0 indexof_inlist_ indexOf_inList_�� 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes�� 0 logthis logThis�� 40 getlocalizedstringforkey getLocalizedStringForKey��  
�� boovtrue
�� 
msng
�� 
msng
� �� G����
�
����� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�� ��
��� 
�  �������� 	0 input  �� 0 anaction anAction�� 0 errorref errorRef��  
� 3�������������������������������������������������������������������������������������������������������� 	0 input  �� 0 anaction anAction�� 0 errorref errorRef�� 0 
theseecids 
theseECIDs�� ,0 parametersdictionary parametersDictionary�� 0 shouldusemdm shouldUseMDM�� 0 enrollmenturl enrollmentURL�� ,0 useanchorcertificate useAnchorCertificate�� (0 mdmcertificatepath MDMCertificatePath�� "0 thisfilemanager thisFileManager�� 0 fileexistence fileExistence�� 00 shouldsupervisedevices shouldSuperviseDevices�� 40 shouldenableshareddevice shouldEnableSharedDevice�� 00 allowpairingwithitunes allowPairingWithiTunes�� $0 organizationname organizationName�� *0 organizationaddress organizationAddress�� &0 organizationemail organizationEmail�� &0 organizationphone organizationPhone�� 00 organizationdepartment organizationDepartment�� 20 hostcertificatefilepath hostCertificateFilePath�� 20 setupsuppressionoptions setupSuppressionOptions�� $0 showlanguagepane showLanguagePane�� &0 shouldsetlanguage shouldSetLanguage�� 40 languagecodedisplaytitle languageCodeDisplayTitle��  0 showregionpane showRegionPane�� "0 shouldsetregion shouldSetRegion�� 00 localecodedisplaytitle localeCodeDisplayTitle�� "0 showprivacypane showPrivacyPane�� "0 showappleidpane showAppleIDPane�� $0 showapplepaypane showApplePayPane�� *0 showdiagnosticspane showDiagnosticsPane�� $0 showlocationpane showLocationPane�� $0 showpasscodepane showPasscodePane�� "0 showrestorepane showRestorePane�� *0 showdisplayzoompane showDisplayZoomPane�� "0 showtouchidpane showTouchIDPane�� 0 showsiripane showSiriPane�� $0 showtruetonepane showTrueTonePane�� 20 showmovefromandroidpane showMoveFromAndroidPane�� *0 showscreensaverpane showScreenSaverPane�� (0 showtaptosetuppane showTapToSetupPane�� >0 showphonenumberpermissionpane showPhoneNumberPermissionPane�� (0 showhomebuttonpane showHomeButtonPane�� 00 showwatchmigrationpane showWatchMigrationPane�� 80 showsignintotvproviderpane showSignInToTVProviderPane�� 40 showtvhomescreensyncpane showTVHomeScreenSyncPane��  0 showtvroompane showTVRoomPane�� (0 targetlanguagecode targetLanguageCode�� $0 targetlocalecode targetLocaleCode�� (0 errormessagestring errorMessageString�� 0 errornumber errorNumber
� � U���� n���� ����� � ��� � � � � �&.��������V��iq����������)3CM]g�������&0S]n���������/9CV`j}���������� *4GQ[s}����������#6@J]gq�������������@F��w������
����������� 0 logthis logThis
�� 
list�� 40 getlocalizedstringforkey getLocalizedStringForKey�� 0 
parameters  �� 0 valueforkey_ valueForKey_
�� 
bool
�� 
ctxt
�� misccura�� 0 nsfilemanager NSFileManager��  0 defaultmanager defaultManager�� &0 fileexistsatpath_ fileExistsAtPath_�� 0 	getutifor 	getUTIFor
�� 
msng�� R0 'derivelanguagecodematchinglanguagetitle 'deriveLanguageCodeMatchingLanguageTitle�� J0 #derivelocalecodematchinglocaletitle #deriveLocaleCodeMatchingLocaleTitle
�� 
scpt�� �� :0 cnfgpreparespecifieddevices CNFGprepareSpecifiedDevices�� (0 errormessagestring errorMessageString
� ������
�� 
errn�� 0 errornumber errorNumber��  ������ 60 nsapplescripterrormessage NSAppleScriptErrorMessage
�� 
pcnt
�� 
errn��a)�k+ O ��&E�O�jv  )j)�k+ Y hO)j+ E�O��k+ �&E�O)�%k+ O�e  ̤�k+ �&E�O)�%k+ O��  )j)�k+ Y hO��k+ �&E�O)a �%k+ O�e  ��a k+ �&E�O)a �%k+ O�a   )j)a k+ Y hOa a ,j+ E�O��k+ �&E�O�f  )j)a k+ Y hO)�k+ a  )j)a k+ Y hY a E�Y a E�Oa E�O�a k+ �&E�O)a �%k+ O�a  k+ �&E�O)a !�%k+ O�e &�a "k+ �&E�O)a #�%k+ O�a $k+ �&E�O)a %�%k+ O�a &k+ �&E�O)a '�%k+ O�a (k+ �&E^ O)a )] %k+ O�a *k+ �&E^ O)a +] %k+ O�a ,k+ �&E^ O)a -] %k+ O�a .k+ �&E^ O)a /] %k+ O] a 0  )j)a 1k+ Y hOa a ,j+ E�O�] k+ �&E�O�f  )j)a 2k+ Y hO)] k+ a 3 )j)a 4k+ Y hY 3a E�Oa E^ Oa E�Oa E�Oa E^ Oa E^ Oa E^ OjvE^ O�a 5k+ �&E^ O)a 6] %k+ O] f  a 7] 6FY hOfE^ O] f  ;�a 8k+ �&E^ O)a 9] %k+ O] e  �a :k+ �&E^ Y hY hO�a ;k+ �&E^ O)a <] %k+ O] f  a =] 6FY hO] f  ;�a >k+ �&E^ O)a ?] %k+ O] e  �a @k+ �&E^ Y hY hO�a Ak+ �&E^ O)a B] %k+ O] f  a C] 6FY hO�a Dk+ �&E^ O)a E] %k+ O] f  a F] 6FY hO�a Gk+ �&E^ O)a H] %k+ O] f  a I] 6FY hO�a Jk+ �&E^ O)a K] %k+ O] f  a L] 6FY hO�a Mk+ �&E^ O)a N] %k+ O] f  a O] 6FY hO�a Pk+ �&E^  O)a Q]  %k+ O]  f  a R] 6FY hO�a Sk+ �&E^ !O)a T] !%k+ O] !f  a U] 6FY hO�a Vk+ �&E^ "O)a W] "%k+ O] "f  a X] 6FY hO�a Yk+ �&E^ #O)a Z] #%k+ O] #f  a [] 6FY hO�a \k+ �&E^ $O)a ]] $%k+ O] $f  a ^] 6FY hO�a _k+ �&E^ %O)a `] %%k+ O] %f  a a] 6FY hO�a bk+ �&E^ &O)a c] &%k+ O] &f  a d] 6FY hO�a ek+ �&E^ 'O)a f] '%k+ O] 'f  a g] 6FY hO�a hk+ �&E^ (O)a i] (%k+ O] (f  a j] 6FY hO�a kk+ �&E^ )O)a l] )%k+ O] )f  a m] 6FY hO�a nk+ �&E^ *O)a o] *%k+ O] *f  a p] 6FY hO�a qk+ �&E^ +O)a r] +%k+ O] +f  a s] 6FY hO�a tk+ �&E^ ,O)a u] ,%k+ O] ,f  a v] 6FY hO�a wk+ �&E^ -O)a x] -%k+ O] -f  a y] 6FY hO�a zk+ �&E^ .O)a {] .%k+ O] .f  a |] 6FY hO] f 	 	] e �& 0*] k+ }E^ /O)a ~] /%k+ Oa ] 6FO] /] 6FY hO] f 	 	] e �& 0*] k+ �E^ 0O)a �] 0%k+ Oa �] 6FO] 0] 6FY hO)a �a �/  *������] ��] ] ] ] a �+ �UO�OPW :X � �)] 1k+ O] 2a � a �] 1l�a �,FOa Y )a �a �lh
� �������
�
����� 
0 opened  ��  ��  
�  
� ������� 0 logthis logThis�� &0 populatecodemenus populateCodeMenus�� )�k+ O*j+ 
� �������
�
����� $0 updateparameters updateParameters��  ��  
� �������� ,0 currentlanguagetitle currentLanguageTitle�� ,0 parametersdictionary parametersDictionary�� (0 currentlocaletitle currentLocaleTitle
� ��������~��� 0 logthis logThis�� *0 titleofselecteditem titleOfSelectedItem� 0 
parameters  �~ $0 setvalue_forkey_ setValue_forKey_�� 3)�k+ Ob  �,E�O)j+ E�O���l+ Ob  �,E�O���l+ 
� �}�|�{
�
��z�} *0 savelist_toplistat_ saveList_toPlistAt_�| �y
��y 
�  �x�w�x 0 thelist theList�w 0 thepath thePath�{  
� �v�u�t�v 0 thelist theList�u 0 thepath thePath�t 0 thearray theArray
� 	�s�r�q�p�o�n�m�l�k
�s misccura�r 0 nsarray NSArray�q "0 arraywitharray_ arrayWithArray_�p 0 nsstring NSString�o &0 stringwithstring_ stringWithString_�n <0 stringbyexpandingtildeinpath stringByExpandingTildeInPath�m 20 writetofile_atomically_ writeToFile_atomically_
�l 
rslt
�k .ascrcmnt****      � ****�z ,��,�k+ E�O��,�k+ E�O�j+ E�O��el+ O�j 
� �j<�i�h
�
��g�j 0 readplistat_ readPlistAt_�i �f
��f 
�  �e�e 0 thepath thePath�h  
� �d�c�d 0 thepath thePath�c 0 thearray theArray
� �b�a�`�_�^�]�\
�b misccura�a 0 nsstring NSString�` &0 stringwithstring_ stringWithString_�_ <0 stringbyexpandingtildeinpath stringByExpandingTildeInPath�^ 0 nsarray NSArray�] 40 arraywithcontentsoffile_ arrayWithContentsOfFile_
�\ 
list�g #��,�k+ E�O�j+ E�O��,�k+ E�O��&
� �[c�Z�Y
�
��X�[ 0 	getutifor 	getUTIFor�Z �W �W    �V�V 0 thispath thisPath�Y  
� �U�T�S�R�Q�U 0 thispath thisPath�T 0 annsurl anNSURL�S 0 	theresult 	theResult�R 0 theuti theUTI�Q 0 theerror theError
� 	�P�O�N�M�L�K�J�I�H
�P misccura�O 	0 NSURL  �N $0 fileurlwithpath_ fileURLWithPath_
�M 
obj �L 00 nsurltypeidentifierkey NSURLTypeIdentifierKey�K @0 getresourcevalue_forkey_error_ getResourceValue_forKey_error_
�J 
cobj�I ,0 localizeddescription localizedDescription
�H 
ctxt�X E��,�k+ E�O����,�m+ E[�k/E�Z[�l/E�Z[�m/E�ZO� )j�j+ �&Y hO��&
� �G��F�E�D�G &0 populatecodemenus populateCodeMenus�F  �E   �C�B�A�@�?�C 60 languagecodesdisplaynames languageCodesDisplayNames�B ,0 parametersdictionary parametersDictionary�A 40 languagecodedisplaytitle languageCodeDisplayTitle�@ 20 localecodesdisplaynames localeCodesDisplayNames�? 00 localecodedisplaytitle localeCodeDisplayTitle �>�=�<�;�:��9�8��7�6�5�4		�> 00 retrievelanguagetitles retrieveLanguageTitles�= &0 sortlistofstrings sortListOfStrings�<  0 removeallitems removeAllItems�; *0 additemswithtitles_ addItemsWithTitles_�: 0 
parameters  �9 0 valueforkey_ valueForKey_
�8 
TEXT�7 ,0 selectitemwithtitle_ selectItemWithTitle_�6  �5  �4 ,0 retrievelocaletitles retrieveLocaleTitles�D �*j+  E�O*�k+ E�Ob   *j+ UOb   *�k+ UO)j+ E�O��k+ �&E�O��   b   *�k+ 	UW X 
 hY hO*j+ E�O*�k+ E�Ob   *j+ UOb   *�k+ UO��k+ �&E�O��   b   *�k+ 	UW X 
 hY hOP
� �3	+�2�1�0�3 &0 sortlistofstrings sortListOfStrings�2 �/�/   �.�. 0 
sourcelist 
sourceList�1   �-�,�+�- 0 
sourcelist 
sourceList�, 0 
cocoaarray 
CocoaArray�+ 0 sorteditems sortedItems �*�)�(	Q�'�&
�* misccura�) 0 nsarray NSArray�( "0 arraywitharray_ arrayWithArray_�' 60 sortedarrayusingselector_ sortedArrayUsingSelector_
�& 
list�0 ��,�k+ E�O��k+ E�O��&
� �%	c�$�#�"�% .0 retrievelanguagecodes retrieveLanguageCodes�$  �#   �!� ��! (0 resourcefolderpath resourceFolderPath�  >0 languagecodespropertylistpath languageCodesPropertyListPath� 0 languagecodes languageCodes ���	x	z�� 
0 bundle  � 0 resourcepath resourcePath
� 
TEXT� 0 readplistat_ readPlistAt_�" ")j+  j+ �&E�O��%�%E�O*�k+ E�O�
� �	���	�� 00 retrievelanguagetitles retrieveLanguageTitles�  �   ��� 0 languagecodes languageCodes� 60 languagecodesdisplaynames languageCodesDisplayNames	 ��� .0 retrievelanguagecodes retrieveLanguageCodes� 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes� *j+  E�O*�k+ E�O�
� �	���
�� *0 retrievelocalecodes retrieveLocaleCodes�  �  
 ���� (0 resourcefolderpath resourceFolderPath� :0 localecodespropertylistpath localeCodesPropertyListPath� 0 localecodes localeCodes ��
�		�	��� 
0 bundle  �
 0 resourcepath resourcePath
�	 
TEXT� 0 readplistat_ readPlistAt_� ")j+  j+ �&E�O��%�%E�O*�k+ E�O�
� �	����� ,0 retrievelocaletitles retrieveLocaleTitles�  �   ��� 0 localecodes localeCodes� 20 localecodesdisplaynames localeCodesDisplayNames �� � *0 retrievelocalecodes retrieveLocaleCodes�  80 derivedisplaynamesforcodes deriveDisplayNamesForCodes� *j+  E�O*�k+ E�O�
� ��	��������� R0 'derivelanguagecodematchinglanguagetitle 'deriveLanguageCodeMatchingLanguageTitle�� ����   ���� &0 thislanguagetitle thisLanguageTitle��   ���������� &0 thislanguagetitle thisLanguageTitle�� 0 languagecodes languageCodes��  0 languagetitles languageTitles�� 0 	itemindex 	itemIndex ������������ .0 retrievelanguagecodes retrieveLanguageCodes�� 00 retrievelanguagetitles retrieveLanguageTitles�� "0 indexof_inlist_ indexOf_inList_
�� 
long
�� 
cobj�� #*j+  E�O*j+ E�O*��l+ �&E�O��/E
� ��
�������� J0 #derivelocalecodematchinglocaletitle #deriveLocaleCodeMatchingLocaleTitle�� ����   ���� "0 thislocaletitle thisLocaleTitle��   ���������� "0 thislocaletitle thisLocaleTitle�� 0 localecodes localeCodes�� 0 localetitles localeTitles�� 0 	itemindex 	itemIndex ������������ *0 retrievelocalecodes retrieveLocaleCodes�� ,0 retrievelocaletitles retrieveLocaleTitles�� "0 indexof_inlist_ indexOf_inList_
�� 
long
�� 
cobj�� #*j+  E�O*j+ E�O*��l+ �&E�O��/E
� ��
0�������� "0 indexof_inlist_ indexOf_inList_�� ����   ������ 0 avalue aValue�� 0 thelist theList��   ���������� 0 avalue aValue�� 0 thelist theList�� 0 thearray theArray�� 0 theindex theIndex ����������
�� misccura�� 0 nsarray NSArray�� "0 arraywitharray_ arrayWithArray_��  0 indexofobject_ indexOfObject_�� 0 
nsnotfound 
NSNotFound�� &��,�k+ E�O��k+ E�O���,  jY �k
� ��
_�������� 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes�� ����   ���� 0 
thesecodes 
theseCodes��   �������������� 0 
thesecodes 
theseCodes�� ,0 displaynamesforcodes displayNamesForCodes�� 0 
thislocale 
thisLocale�� 0 i  �� 0 thiscode thisCode�� "0 thisdisplayname thisDisplayName ����������������
�� misccura�� 0 nslocale NSLocale�� 0 currentlocale currentLocale
�� .corecnte****       ****
�� 
cobj�� (0 nslocaleidentifier NSLocaleIdentifier�� 40 displaynameforkey_value_ displayNameForKey_value_
�� 
TEXT�� ?jvE�O��,j+ E�O +k�j kh ��/E�O���,�l+ �&E�O��6F[OY��O�
� ��
��������� 0 logthis logThis�� ����   ���� 0 	itemtolog 	itemToLog��   ���� 0 	itemtolog 	itemToLog ��
���
�� misccura
�� .ascrcmnt****      � ****�� b  e  � 	�%j UY h
� ��
��������� 40 getlocalizedstringforkey getLocalizedStringForKey�� ����   ��
�� 
kMsg��   ��
�� 
kMsg 
����������� 
0 bundle  
�� 
msng�� H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_
�� 
utxt�� b  �%�%E�O)j+ ���m+ �& ascr  ��ޭ