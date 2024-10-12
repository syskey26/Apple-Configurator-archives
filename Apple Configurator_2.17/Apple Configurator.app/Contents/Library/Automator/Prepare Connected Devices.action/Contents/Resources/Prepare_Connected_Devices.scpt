FasdUAS 1.101.10   ��   ��    k             l     ��  ��    - '  Prepare_Connected_Devices.applescript     � 	 	 N     P r e p a r e _ C o n n e c t e d _ D e v i c e s . a p p l e s c r i p t   
  
 l     ��  ��    !   Prepare Connected Devices     �   6     P r e p a r e   C o n n e c t e d   D e v i c e s      l     ��������  ��  ��        l     ��  ��    &    Created by Sal Work on 5/4/16.     �   @     C r e a t e d   b y   S a l   W o r k   o n   5 / 4 / 1 6 .      l     ��  ��    = 7  Copyright � 2016-2023 Apple Inc. All rights reserved.     �   n     C o p y r i g h t   �   2 0 1 6 - 2 0 2 3   A p p l e   I n c .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        h     �� �� 60 prepare_connected_devices Prepare_Connected_Devices  k            ! " ! j     �� #
�� 
pare # 4     �� $
�� 
pcls $ m     % % � & &  A M B u n d l e A c t i o n "  ' ( ' l     ��������  ��  ��   (  ) * ) j   	 �� +�� 0 loggingstatus loggingStatus + m   	 
��
�� boovtrue *  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   outlet properties    1 � 2 2 $   o u t l e t   p r o p e r t i e s /  3 4 3 j    �� 5�� (0 languagespopupmenu languagesPopupMenu 5 m    ��
�� 
msng 4  6 7 6 j    �� 8�� $0 localespopupmenu localesPopupMenu 8 m    ��
�� 
msng 7  9 : 9 l     ��������  ��  ��   :  ; < ; j    �� =�� .0 actionidentiferstring actionIdentiferString = m     > > � ? ?  C N F G A C T - 0 8 <  @ A @ l     ��������  ��  ��   A  B C B l     ��������  ��  ��   C  D E D i     F G F I      �� H���� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_ H  I J I o      ���� 	0 input   J  K L K o      ���� 0 anaction anAction L  M�� M o      ���� 0 errorref errorRef��  ��   G k    ? N N  O P O n     Q R Q I    �� S���� 0 logthis logThis S  T�� T m     U U � V V  r u n W i t h I n p u t ( & )��  ��   R  f      P  W�� W Q   ? X Y Z X k   
 [ [  \ ] \ r   
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
ctxt��  ��  � o      ���� 00 localecodedisplaytitle localeCodeDisplayTitle��  ��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� r  ����� l �������� c  ����� l �������� n ����� I  ��������� 0 valueforkey_ valueForKey_� ���� m  ���� ���   s h o w S I M S e t u p P a n e��  ��  � o  ������ ,0 parametersdictionary parametersDictionary��  ��  � m  ����
�� 
bool��  ��  � o      ���� $0 showsimsetuppane showSIMSetupPane� ��� n ����� I  ��������� 0 logthis logThis� ���� b  ����� m  ���� ��� $ s h o w S I M S e t u p P a n e :  � o  ������ $0 showsimsetuppane showSIMSetupPane��  ��  �  f  ��� ��� Z ��������� = ����� o  ������ $0 showsimsetuppane showSIMSetupPane� m  ����
�� boovfals� r  ����� m  ���� ���   - - s k i p - s i m - s e t u p� l     ������ n      ���  ;  ��� o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� r  ����� l �� ����  c  �� l ������ n �� I  �������� 0 valueforkey_ valueForKey_ �� m  �� �		  s h o w P r i v a c y P a n e��  ��   o  ������ ,0 parametersdictionary parametersDictionary��  ��   m  ����
�� 
bool��  ��  � o      ���� "0 showprivacypane showPrivacyPane� 

 n �� I  ����~� 0 logthis logThis �} b  �� m  �� � " s h o w P r i v a c y P a n e :   o  ���|�| "0 showprivacypane showPrivacyPane�}  �~    f  ��  Z ���{�z = �� o  ���y�y "0 showprivacypane showPrivacyPane m  ���x
�x boovfals r  �� m  �� �  - - s k i p - p r i v a c y l     �w�v n         ;  ��  o  ���u�u 20 setupsuppressionoptions setupSuppressionOptions�w  �v  �{  �z   !"! l   �t�s�r�t  �s  �r  " #$# r   %&% l  
'�q�p' c   
()( l  *�o�n* n  +,+ I  �m-�l�m 0 valueforkey_ valueForKey_- .�k. m  // �00  s h o w A p p l e I D P a n e�k  �l  , o   �j�j ,0 parametersdictionary parametersDictionary�o  �n  ) m  	�i
�i 
bool�q  �p  & o      �h�h "0 showappleidpane showAppleIDPane$ 121 n 343 I  �g5�f�g 0 logthis logThis5 6�e6 b  787 m  99 �:: " s h o w A p p l e I D P a n e :  8 o  �d�d "0 showappleidpane showAppleIDPane�e  �f  4  f  2 ;<; Z 0=>�c�b= = !?@? o  �a�a "0 showappleidpane showAppleIDPane@ m   �`
�` boovfals> r  $,ABA m  $'CC �DD  - - s k i p - a p p l e i dB l     E�_�^E n      FGF  ;  *+G o  '*�]�] 20 setupsuppressionoptions setupSuppressionOptions�_  �^  �c  �b  < HIH l 11�\�[�Z�\  �[  �Z  I JKJ r  1?LML l 1;N�Y�XN c  1;OPO l 19Q�W�VQ n 19RSR I  29�UT�T�U 0 valueforkey_ valueForKey_T U�SU m  25VV �WW ( s h o w I n t e n d e d U s e r P a n e�S  �T  S o  12�R�R ,0 parametersdictionary parametersDictionary�W  �V  P m  9:�Q
�Q 
bool�Y  �X  M o      �P�P ,0 showintendeduserpane showIntendedUserPaneK XYX n @LZ[Z I  AL�O\�N�O 0 logthis logThis\ ]�M] b  AH^_^ m  AD`` �aa , s h o w I n t e n d e d U s e r P a n e :  _ o  DG�L�L ,0 showintendeduserpane showIntendedUserPane�M  �N  [  f  @AY bcb Z Made�K�Jd = MRfgf o  MP�I�I ,0 showintendeduserpane showIntendedUserPaneg m  PQ�H
�H boovfalse r  U]hih m  UXjj �kk ( - - s k i p - i n t e n d e d - u s e ri l     l�G�Fl n      mnm  ;  [\n o  X[�E�E 20 setupsuppressionoptions setupSuppressionOptions�G  �F  �K  �J  c opo l bb�D�C�B�D  �C  �B  p qrq r  bpsts l blu�A�@u c  blvwv l bjx�?�>x n bjyzy I  cj�={�<�= 0 valueforkey_ valueForKey_{ |�;| m  cf}} �~~   s h o w A p p l e P a y P a n e�;  �<  z o  bc�:�: ,0 parametersdictionary parametersDictionary�?  �>  w m  jk�9
�9 
bool�A  �@  t o      �8�8 $0 showapplepaypane showApplePayPaner � n q}��� I  r}�7��6�7 0 logthis logThis� ��5� b  ry��� m  ru�� ��� $ s h o w A p p l e P a y P a n e :  � o  ux�4�4 $0 showapplepaypane showApplePayPane�5  �6  �  f  qr� ��� Z ~����3�2� = ~���� o  ~��1�1 $0 showapplepaypane showApplePayPane� m  ���0
�0 boovfals� r  ����� m  ���� ���  - - s k i p - a p p l e p a y� l     ��/�.� n      ���  ;  ��� o  ���-�- 20 setupsuppressionoptions setupSuppressionOptions�/  �.  �3  �2  � ��� l ���,�+�*�,  �+  �*  � ��� r  ����� l ����)�(� c  ����� l ����'�&� n ����� I  ���%��$�% 0 valueforkey_ valueForKey_� ��#� m  ���� ��� & s h o w D i a g n o s t i c s P a n e�#  �$  � o  ���"�" ,0 parametersdictionary parametersDictionary�'  �&  � m  ���!
�! 
bool�)  �(  � o      � �  *0 showdiagnosticspane showDiagnosticsPane� ��� n ����� I  ������ 0 logthis logThis� ��� b  ����� m  ���� ��� * s h o w D i a g n o s t i c s P a n e :  � o  ���� *0 showdiagnosticspane showDiagnosticsPane�  �  �  f  ��� ��� Z ������� = ����� o  ���� *0 showdiagnosticspane showDiagnosticsPane� m  ���
� boovfals� r  ����� m  ���� ��� $ - - s k i p - d i a g n o s t i c s� l     ���� n      ���  ;  ��� o  ���� 20 setupsuppressionoptions setupSuppressionOptions�  �  �  �  � ��� l ������  �  �  � ��� r  ����� l ������ c  ����� l ������ n ����� I  ������ 0 valueforkey_ valueForKey_� ��� m  ���� ���   s h o w L o c a t i o n P a n e�  �  � o  ���
�
 ,0 parametersdictionary parametersDictionary�  �  � m  ���	
�	 
bool�  �  � o      �� $0 showlocationpane showLocationPane� ��� n ����� I  ������ 0 logthis logThis� ��� b  ����� m  ���� ��� $ s h o w L o c a t i o n P a n e :  � o  ���� $0 showlocationpane showLocationPane�  �  �  f  ��� ��� Z ������� = ����� o  ���� $0 showlocationpane showLocationPane� m  ��� 
�  boovfals� r  ����� m  ���� ���  - - s k i p - l o c a t i o n� l     ������ n      ���  ;  ��� o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��  �  �  � ��� l ����������  ��  ��  � ��� r  ���� l �������� c  ����� l �������� n ����� I  ��������� 0 valueforkey_ valueForKey_� ���� m  ���� ���   s h o w P a s s c o d e P a n e��  ��  � o  ������ ,0 parametersdictionary parametersDictionary��  ��  � m  ����
�� 
bool��  ��  � o      ���� $0 showpasscodepane showPasscodePane� ��� n ��� I  ������� 0 logthis logThis� ���� b  ��� m  �� ��� $ s h o w P a s s c o d e P a n e :  � o  ���� $0 showpasscodepane showPasscodePane��  ��  �  f  � ��� Z % ����  =  o  ���� $0 showpasscodepane showPasscodePane m  ��
�� boovfals r  ! m   �  - - s k i p - p a s s c o d e l     ���� n      	
	  ;   
 o  ���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  �  l &&��������  ��  ��    r  &4 l &0���� c  &0 l &.���� n &. I  '.������ 0 valueforkey_ valueForKey_ �� m  '* �  s h o w R e s t o r e P a n e��  ��   o  &'���� ,0 parametersdictionary parametersDictionary��  ��   m  ./��
�� 
bool��  ��   o      ���� "0 showrestorepane showRestorePane  n 5A I  6A������ 0 logthis logThis  ��  b  6=!"! m  69## �$$ B s h o w R e s t o r e P a n e   ( i C l o u d   B a c k u p ) :  " o  9<���� "0 showrestorepane showRestorePane��  ��    f  56 %&% Z BV'(����' = BG)*) o  BE���� "0 showrestorepane showRestorePane* m  EF��
�� boovfals( r  JR+,+ m  JM-- �..  - - s k i p - r e s t o r e, l     /����/ n      010  ;  PQ1 o  MP���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  & 232 l WW��������  ��  ��  3 454 r  We676 l Wa8����8 c  Wa9:9 l W_;����; n W_<=< I  X_��>���� 0 valueforkey_ valueForKey_> ?��? m  X[@@ �AA & s h o w D i s p l a y Z o o m P a n e��  ��  = o  WX���� ,0 parametersdictionary parametersDictionary��  ��  : m  _`��
�� 
bool��  ��  7 o      ���� *0 showdisplayzoompane showDisplayZoomPane5 BCB n frDED I  gr��F���� 0 logthis logThisF G��G b  gnHIH m  gjJJ �KK * s h o w D i s p l a y Z o o m P a n e :  I o  jm���� *0 showdisplayzoompane showDisplayZoomPane��  ��  E  f  fgC LML Z s�NO����N = sxPQP o  sv���� *0 showdisplayzoompane showDisplayZoomPaneQ m  vw��
�� boovfalsO r  {�RSR m  {~TT �UU  - - s k i p - z o o mS l     V����V n      WXW  ;  ��X o  ~����� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  M YZY l ����������  ��  ��  Z [\[ r  ��]^] l ��_����_ c  ��`a` l ��b����b n ��cdc I  ����e���� 0 valueforkey_ valueForKey_e f��f m  ��gg �hh   s h o w A p p S t o r e P a n e��  ��  d o  ������ ,0 parametersdictionary parametersDictionary��  ��  a m  ����
�� 
bool��  ��  ^ o      ���� $0 showappstorepane showAppStorePane\ iji n ��klk I  ����m���� 0 logthis logThism n��n b  ��opo m  ��qq �rr $ s h o w A p p S t o r e P a n e :  p o  ������ $0 showappstorepane showAppStorePane��  ��  l  f  ��j sts Z ��uv����u = ��wxw o  ������ $0 showappstorepane showAppStorePanex m  ����
�� boovfalsv r  ��yzy m  ��{{ �||   - - s k i p - a p p - s t o r ez l     }����} n      ~~  ;  �� o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  t ��� l ����������  ��  ��  � ��� r  ����� l �������� c  ����� l �������� n ����� I  ��������� 0 valueforkey_ valueForKey_� ���� m  ���� ���  s h o w S a f e t y P a n e��  ��  � o  ������ ,0 parametersdictionary parametersDictionary��  ��  � m  ����
�� 
bool��  ��  � o      ����  0 showsafetypane showSafetyPane� ��� n ����� I  ��������� 0 logthis logThis� ���� b  ����� m  ���� ���   s h o w S a f e t y P a n e :  � o  ������  0 showsafetypane showSafetyPane��  ��  �  f  ��� ��� Z ��������� = ����� o  ������  0 showsafetypane showSafetyPane� m  ����
�� boovfals� r  ����� m  ���� ���  - - s k i p - s a f e t y� l     ������ n      ���  ;  ��� o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� r  ����� l �������� c  ����� l �����~� n ����� I  ���}��|�} 0 valueforkey_ valueForKey_� ��{� m  ���� ��� ( s h o w M u l t i t a s k i n g P a n e�{  �|  � o  ���z�z ,0 parametersdictionary parametersDictionary�  �~  � m  ���y
�y 
bool��  ��  � o      �x�x ,0 showmultitaskingpane showMultitaskingPane� ��� n ���� I  ��w��v�w 0 logthis logThis� ��u� b  ���� m  ���� ��� , s h o w M u l t i t a s k i n g P a n e :  � o  � �t�t ,0 showmultitaskingpane showMultitaskingPane�u  �v  �  f  ��� ��� Z ���s�r� = ��� o  	�q�q ,0 showmultitaskingpane showMultitaskingPane� m  	
�p
�p boovfals� r  ��� m  �� ��� & - - s k i p - m u l t i t a s k i n g� l     ��o�n� n      ���  ;  � o  �m�m 20 setupsuppressionoptions setupSuppressionOptions�o  �n  �s  �r  � ��� l �l�k�j�l  �k  �j  � ��� r  )��� l %��i�h� c  %��� l #��g�f� n #��� I  #�e��d�e 0 valueforkey_ valueForKey_� ��c� m  �� ��� ( s h o w A c t i o n B u t t o n P a n e�c  �d  � o  �b�b ,0 parametersdictionary parametersDictionary�g  �f  � m  #$�a
�a 
bool�i  �h  � o      �`�` ,0 showactionbuttonpane showActionButtonPane� ��� n *6��� I  +6�_��^�_ 0 logthis logThis� ��]� b  +2��� m  +.�� ��� , s h o w A c t i o n B u t t o n P a n e :  � o  .1�\�\ ,0 showactionbuttonpane showActionButtonPane�]  �^  �  f  *+� ��� Z 7K���[�Z� = 7<��� o  7:�Y�Y ,0 showactionbuttonpane showActionButtonPane� m  :;�X
�X boovfals� r  ?G��� m  ?B�� ��� ( - - s k i p - a c t i o n - b u t t o n� l     ��W�V� n      ���  ;  EF� o  BE�U�U 20 setupsuppressionoptions setupSuppressionOptions�W  �V  �[  �Z  � ��� l LL�T�S�R�T  �S  �R  � ��� r  LZ��� l LV��Q�P� c  LV��� l LT��O�N� n LT� � I  MT�M�L�M 0 valueforkey_ valueForKey_ �K m  MP � , s h o w T e r m s O f A d d r e s s P a n e�K  �L    o  LM�J�J ,0 parametersdictionary parametersDictionary�O  �N  � m  TU�I
�I 
bool�Q  �P  � o      �H�H 00 showtermsofaddresspane showTermsOfAddressPane�  n [g I  \g�G	�F�G 0 logthis logThis	 
�E
 b  \c m  \_ � 0 s h o w T e r m s O f A d d r e s s P a n e :   o  _b�D�D 00 showtermsofaddresspane showTermsOfAddressPane�E  �F    f  [\  Z h|�C�B = hm o  hk�A�A 00 showtermsofaddresspane showTermsOfAddressPane m  kl�@
�@ boovfals r  px m  ps � . - - s k i p - t e r m s - o f - a d d r e s s l     �?�> n        ;  vw o  sv�=�= 20 setupsuppressionoptions setupSuppressionOptions�?  �>  �C  �B    l }}�<�;�:�<  �;  �:    r  }� !  l }�"�9�8" c  }�#$# l }�%�7�6% n }�&'& I  ~��5(�4�5 0 valueforkey_ valueForKey_( )�3) m  ~�** �++ > s h o w A c c e s s i b i l i t y A p p e a r a n c e P a n e�3  �4  ' o  }~�2�2 ,0 parametersdictionary parametersDictionary�7  �6  $ m  ���1
�1 
bool�9  �8  ! o      �0�0 B0 showaccessibilityappearancepane showAccessibilityAppearancePane ,-, n ��./. I  ���/0�.�/ 0 logthis logThis0 1�-1 b  ��232 m  ��44 �55 B s h o w A c c e s s i b i l i t y A p p e a r a n c e P a n e :  3 o  ���,�, B0 showaccessibilityappearancepane showAccessibilityAppearancePane�-  �.  /  f  ��- 676 Z ��89�+�*8 = ��:;: o  ���)�) B0 showaccessibilityappearancepane showAccessibilityAppearancePane; m  ���(
�( boovfals9 r  ��<=< m  ��>> �?? > - - s k i p - a c c e s s i b i l i t y - a p p e a r a n c e= l     @�'�&@ n      ABA  ;  ��B o  ���%�% 20 setupsuppressionoptions setupSuppressionOptions�'  �&  �+  �*  7 CDC l ���$�#�"�$  �#  �"  D EFE l  ���!GH�!  G
             set showTOSPane to ((parametersDictionary's valueForKey:"showTOSPane") as boolean)
             my logThis("showTOSPane: " & showTOSPane)
             if showTOSPane is false then set the end of setupSuppressionOptions to "--skip-tos"
                H �II 
                           s e t   s h o w T O S P a n e   t o   ( ( p a r a m e t e r s D i c t i o n a r y ' s   v a l u e F o r K e y : " s h o w T O S P a n e " )   a s   b o o l e a n ) 
                           m y   l o g T h i s ( " s h o w T O S P a n e :   "   &   s h o w T O S P a n e ) 
                           i f   s h o w T O S P a n e   i s   f a l s e   t h e n   s e t   t h e   e n d   o f   s e t u p S u p p r e s s i o n O p t i o n s   t o   " - - s k i p - t o s " 
                          F JKJ l ��� ���   �  �  K LML r  ��NON l ��P��P c  ��QRQ l ��S��S n ��TUT I  ���V�� 0 valueforkey_ valueForKey_V W�W m  ��XX �YY  s h o w T o u c h I D P a n e�  �  U o  ���� ,0 parametersdictionary parametersDictionary�  �  R m  ���
� 
bool�  �  O o      �� "0 showtouchidpane showTouchIDPaneM Z[Z n ��\]\ I  ���^�� 0 logthis logThis^ _�_ b  ��`a` m  ��bb �cc " s h o w T o u c h I D P a n e :  a o  ���� "0 showtouchidpane showTouchIDPane�  �  ]  f  ��[ ded Z ��fg��f = ��hih o  ���� "0 showtouchidpane showTouchIDPanei m  ���
� boovfalsg r  ��jkj m  ��ll �mm  - - s k i p - t o u c h i dk l     n��
n n      opo  ;  ��p o  ���	�	 20 setupsuppressionoptions setupSuppressionOptions�  �
  �  �  e qrq l ������  �  �  r sts r  ��uvu l ��w��w c  ��xyx l ��z��z n ��{|{ I  ���}� � 0 valueforkey_ valueForKey_} ~��~ m  �� ���  s h o w S i r i P a n e��  �   | o  ������ ,0 parametersdictionary parametersDictionary�  �  y m  ����
�� 
bool�  �  v o      ���� 0 showsiripane showSiriPanet ��� n ����� I  ��������� 0 logthis logThis� ���� b  ����� m  ���� ���  s h o w S i r i P a n e :  � o  ������ 0 showsiripane showSiriPane��  ��  �  f  ��� ��� Z �������� = � ��� o  ������ 0 showsiripane showSiriPane� m  ����
�� boovfals� r  ��� m  �� ���  - - s k i p - s i r i� l     ������ n      ���  ;  	
� o  	���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l ��������  ��  ��  � ��� r  ��� l ������ c  ��� l ������ n ��� I  ������� 0 valueforkey_ valueForKey_� ���� m  �� ��� $ s h o w S c r e e n T i m e P a n e��  ��  � o  ���� ,0 parametersdictionary parametersDictionary��  ��  � m  ��
�� 
bool��  ��  � o      ���� (0 showscreentimepane showScreenTimePane� ��� n +��� I   +������� 0 logthis logThis� ���� b   '��� m   #�� ��� ( s h o w S c r e e n T i m e P a n e :  � o  #&���� (0 showscreentimepane showScreenTimePane��  ��  �  f   � ��� Z ,@������� = ,1��� o  ,/���� (0 showscreentimepane showScreenTimePane� m  /0��
�� boovfals� r  4<��� m  47�� ��� " - - s k i p - s c r e e n t i m e� l     ������ n      ���  ;  :;� o  7:���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l AA��������  ��  ��  � ��� r  AO��� l AK������ c  AK��� l AI������ n AI��� I  BI������� 0 valueforkey_ valueForKey_� ���� m  BE�� ��� , s h o w S o f t w a r e U p d a t e P a n e��  ��  � o  AB���� ,0 parametersdictionary parametersDictionary��  ��  � m  IJ��
�� 
bool��  ��  � o      ���� 00 showsoftwareupdatepane showSoftwareUpdatePane� ��� n P\��� I  Q\������� 0 logthis logThis� ���� b  QX��� m  QT�� ��� 0 s h o w S o f t w a r e U p d a t e P a n e :  � o  TW���� 00 showsoftwareupdatepane showSoftwareUpdatePane��  ��  �  f  PQ� ��� Z ]q������� = ]b��� o  ]`���� 00 showsoftwareupdatepane showSoftwareUpdatePane� m  `a��
�� boovfals� r  em��� m  eh�� ��� , - - s k i p - s o f t w a r e - u p d a t e� l     ������ n      ���  ;  kl� o  hk���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l rr��������  ��  ��  � ��� r  r���� l r|������ c  r|��� l rz������ n rz��� I  sz������� 0 valueforkey_ valueForKey_� ���� m  sv�� ��� 6 s h o w i M e s s a g e A n d F a c e T i m e P a n e��  ��  � o  rs���� ,0 parametersdictionary parametersDictionary��  ��  � m  z{��
�� 
bool��  ��  � o      ���� :0 showimessageandfacetimepane showiMessageAndFaceTimePane� ��� n ����� I  ��������� 0 logthis logThis� ���� b  ����� m  ���� ��� : s h o w i M e s s a g e A n d F a c e T i m e P a n e :  � o  ������ :0 showimessageandfacetimepane showiMessageAndFaceTimePane��  ��  �  f  ���    Z ������ = �� o  ������ :0 showimessageandfacetimepane showiMessageAndFaceTimePane m  ����
�� boovfals r  �� m  �� �		 8 - - s k i p - i m e s s a g e - a n d - f a c e t i m e l     
����
 n        ;  �� o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��    l ����������  ��  ��    l ������    # added MAY 01-2017    � & #   a d d e d   M A Y   0 1 - 2 0 1 7  r  �� l ������ c  �� l ������ n �� I  �������� 0 valueforkey_ valueForKey_ �� m  ��   �!!   s h o w T r u e T o n e P a n e��  ��   o  ������ ,0 parametersdictionary parametersDictionary��  ��   m  ����
�� 
bool��  ��   o      ���� $0 showtruetonepane showTrueTonePane "#" n ��$%$ I  ����&���� 0 logthis logThis& '��' b  ��()( m  ��** �++ $ s h o w T r u e T o n e P a n e :  ) o  ������ $0 showtruetonepane showTrueTonePane��  ��  %  f  ��# ,-, Z ��./����. = ��010 o  ������ $0 showtruetonepane showTrueTonePane1 m  ����
�� boovfals/ r  ��232 m  ��44 �55   - - s k i p - t r u e - t o n e3 l     6����6 n      787  ;  ��8 o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  - 9:9 l ����������  ��  ��  : ;<; r  ��=>= l ��?����? c  ��@A@ l ��B����B n ��CDC I  ����E���� 0 valueforkey_ valueForKey_E F��F m  ��GG �HH . s h o w M o v e F r o m A n d r o i d P a n e��  ��  D o  ������ ,0 parametersdictionary parametersDictionary��  ��  A m  ����
�� 
bool��  ��  > o      ���� 20 showmovefromandroidpane showMoveFromAndroidPane< IJI n ��KLK I  ����M���� 0 logthis logThisM N��N b  ��OPO m  ��QQ �RR 2 s h o w M o v e F r o m A n d r o i d P a n e :  P o  ���� 20 showmovefromandroidpane showMoveFromAndroidPane��  ��  L  f  ��J STS Z �UV�~�}U = ��WXW o  ���|�| 20 showmovefromandroidpane showMoveFromAndroidPaneX m  ���{
�{ boovfalsV r  � YZY m  ��[[ �\\  - - s k i p - a n d r o i dZ l     ]�z�y] n      ^_^  ;  ��_ o  ���x�x 20 setupsuppressionoptions setupSuppressionOptions�z  �y  �~  �}  T `a` l �w�v�u�w  �v  �u  a bcb r  ded l f�t�sf c  ghg l i�r�qi n jkj I  �pl�o�p 0 valueforkey_ valueForKey_l m�nm m  	nn �oo & s h o w S c r e e n S a v e r P a n e�n  �o  k o  �m�m ,0 parametersdictionary parametersDictionary�r  �q  h m  �l
�l 
bool�t  �s  e o      �k�k *0 showscreensaverpane showScreenSaverPanec pqp n  rsr I   �jt�i�j 0 logthis logThist u�hu b  vwv m  xx �yy * s h o w S c r e e n S a v e r P a n e :  w o  �g�g *0 showscreensaverpane showScreenSaverPane�h  �i  s  f  q z{z Z !5|}�f�e| = !&~~ o  !$�d�d *0 showscreensaverpane showScreenSaverPane m  $%�c
�c boovfals} r  )1��� m  ),�� ��� & - - s k i p - s c r e e n - s a v e r� l     ��b�a� n      ���  ;  /0� o  ,/�`�` 20 setupsuppressionoptions setupSuppressionOptions�b  �a  �f  �e  { ��� l 66�_�^�]�_  �^  �]  � ��� r  6D��� l 6@��\�[� c  6@��� l 6>��Z�Y� n 6>��� I  7>�X��W�X 0 valueforkey_ valueForKey_� ��V� m  7:�� ��� $ s h o w T a p T o S e t u p P a n e�V  �W  � o  67�U�U ,0 parametersdictionary parametersDictionary�Z  �Y  � m  >?�T
�T 
bool�\  �[  � o      �S�S (0 showtaptosetuppane showTapToSetupPane� ��� n EQ��� I  FQ�R��Q�R 0 logthis logThis� ��P� b  FM��� m  FI�� ��� ( s h o w T a p T o S e t u p P a n e :  � o  IL�O�O (0 showtaptosetuppane showTapToSetupPane�P  �Q  �  f  EF� ��� Z Rf���N�M� = RW��� o  RU�L�L (0 showtaptosetuppane showTapToSetupPane� m  UV�K
�K boovfals� r  Zb��� m  Z]�� ��� & - - s k i p - t a p - t o - s e t u p� l     ��J�I� n      ���  ;  `a� o  ]`�H�H 20 setupsuppressionoptions setupSuppressionOptions�J  �I  �N  �M  � ��� l gg�G�F�E�G  �F  �E  � ��� r  gu��� l gq��D�C� c  gq��� l go��B�A� n go��� I  ho�@��?�@ 0 valueforkey_ valueForKey_� ��>� m  hk�� ��� : s h o w P h o n e N u m b e r P e r m i s s i o n P a n e�>  �?  � o  gh�=�= ,0 parametersdictionary parametersDictionary�B  �A  � m  op�<
�< 
bool�D  �C  � o      �;�; >0 showphonenumberpermissionpane showPhoneNumberPermissionPane� ��� n v���� I  w��:��9�: 0 logthis logThis� ��8� b  w~��� m  wz�� ��� > s h o w P h o n e N u m b e r P e r m i s s i o n P a n e :  � o  z}�7�7 >0 showphonenumberpermissionpane showPhoneNumberPermissionPane�8  �9  �  f  vw� ��� Z �����6�5� = ����� o  ���4�4 >0 showphonenumberpermissionpane showPhoneNumberPermissionPane� m  ���3
�3 boovfals� r  ����� m  ���� ��� < - - s k i p - p h o n e - n u m b e r - p e r m i s s i o n� l     ��2�1� n      ���  ;  ��� o  ���0�0 20 setupsuppressionoptions setupSuppressionOptions�2  �1  �6  �5  � ��� l ���/�.�-�/  �.  �-  � ��� r  ����� l ����,�+� c  ����� l ����*�)� n ����� I  ���(��'�( 0 valueforkey_ valueForKey_� ��&� m  ���� ��� $ s h o w H o m e B u t t o n P a n e�&  �'  � o  ���%�% ,0 parametersdictionary parametersDictionary�*  �)  � m  ���$
�$ 
bool�,  �+  � o      �#�# (0 showhomebuttonpane showHomeButtonPane� ��� n ����� I  ���"��!�" 0 logthis logThis� �� � b  ����� m  ���� ��� ( s h o w H o m e B u t t o n P a n e :  � o  ���� (0 showhomebuttonpane showHomeButtonPane�   �!  �  f  ��� ��� Z ������� = ����� o  ���� (0 showhomebuttonpane showHomeButtonPane� m  ���
� boovfals� r  ����� m  ���� ��� $ - - s k i p - h o m e - b u t t o n� l     ���� n      ���  ;  ��� o  ���� 20 setupsuppressionoptions setupSuppressionOptions�  �  �  �  � ��� l ������  �  �  � ��� r  ��   l ���� c  �� l ���� n �� I  ����� 0 valueforkey_ valueForKey_ 	�	 m  ��

 � , s h o w W a t c h M i g r a t i o n P a n e�  �   o  ���� ,0 parametersdictionary parametersDictionary�  �   m  ���
� 
bool�  �   o      �� 00 showwatchmigrationpane showWatchMigrationPane�  n �� I  ���
�	�
 0 logthis logThis � b  �� m  �� � 0 s h o w W a t c h M i g r a t i o n P a n e :   o  ���� 00 showwatchmigrationpane showWatchMigrationPane�  �	    f  ��  Z ���� = �� o  ���� 00 showwatchmigrationpane showWatchMigrationPane m  ���
� boovfals r  �� m  �� � , - - s k i p - w a t c h - m i g r a t i o n l      ��  n      !"!  ;  ��" o  ��� �  20 setupsuppressionoptions setupSuppressionOptions�  �  �  �   #$# l ����������  ��  ��  $ %&% r  �	'(' l �	)����) c  �	*+* l �	,����, n �	-.- I  �	��/���� 0 valueforkey_ valueForKey_/ 0��0 m  ��11 �22 8 s h o w N e w F e a t u r e H i g h l i g h t s P a n e��  ��  . o  ������ ,0 parametersdictionary parametersDictionary��  ��  + m  		��
�� 
bool��  ��  ( o      ���� <0 shownewfeaturehighlightspane showNewFeatureHighlightsPane& 343 n 			565 I  	
	��7���� 0 logthis logThis7 8��8 b  	
	9:9 m  	
	;; �<< < s h o w N e w F e a t u r e H i g h l i g h t s P a n e :  : o  		���� <0 shownewfeaturehighlightspane showNewFeatureHighlightsPane��  ��  6  f  			
4 =>= Z 		*?@����? = 		ABA o  		���� <0 shownewfeaturehighlightspane showNewFeatureHighlightsPaneB m  		��
�� boovfals@ r  		&CDC m  		!EE �FF 2 - - s k i p - f e a t u r e - h i g h l i g h t sD l     G����G n      HIH  ;  	$	%I o  	!	$���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  > JKJ l 	+	+��������  ��  ��  K LML r  	+	9NON l 	+	5P����P c  	+	5QRQ l 	+	3S����S n 	+	3TUT I  	,	3��V���� 0 valueforkey_ valueForKey_V W��W m  	,	/XX �YY  s h o w W e l c o m e P a n e��  ��  U o  	+	,���� ,0 parametersdictionary parametersDictionary��  ��  R m  	3	4��
�� 
bool��  ��  O o      ���� "0 showwelcomepane showWelcomePaneM Z[Z n 	:	F\]\ I  	;	F��^���� 0 logthis logThis^ _��_ b  	;	B`a` m  	;	>bb �cc " s h o w W e l c o m e P a n e :  a o  	>	A���� "0 showwelcomepane showWelcomePane��  ��  ]  f  	:	;[ ded Z 	G	[fg����f = 	G	Lhih o  	G	J���� "0 showwelcomepane showWelcomePanei m  	J	K��
�� boovfalsg r  	O	Wjkj m  	O	Rll �mm  - - s k i p - w e l c o m ek l     n����n n      opo  ;  	U	Vp o  	R	U���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  e qrq l 	\	\��������  ��  ��  r sts r  	\	juvu l 	\	fw����w c  	\	fxyx l 	\	dz����z n 	\	d{|{ I  	]	d��}���� 0 valueforkey_ valueForKey_} ~��~ m  	]	` ��� 4 s h o w S i g n I n T o T V P r o v i d e r P a n e��  ��  | o  	\	]���� ,0 parametersdictionary parametersDictionary��  ��  y m  	d	e��
�� 
bool��  ��  v o      ���� 80 showsignintotvproviderpane showSignInToTVProviderPanet ��� n 	k	w��� I  	l	w������� 0 logthis logThis� ���� b  	l	s��� m  	l	o�� ��� 8 s h o w S i g n I n T o T V P r o v i d e r P a n e :  � o  	o	r���� 80 showsignintotvproviderpane showSignInToTVProviderPane��  ��  �  f  	k	l� ��� Z 	x	�������� = 	x	}��� o  	x	{���� 80 showsignintotvproviderpane showSignInToTVProviderPane� m  	{	|��
�� boovfals� r  	�	���� m  	�	��� ��� $ - - s k i p - t v - p r o v i d e r� l     ������ n      ���  ;  	�	�� o  	�	����� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l 	�	���������  ��  ��  � ��� r  	�	���� l 	�	������� c  	�	���� l 	�	������� n 	�	���� I  	�	�������� 0 valueforkey_ valueForKey_� ���� m  	�	��� ��� 0 s h o w T V H o m e S c r e e n S y n c P a n e��  ��  � o  	�	����� ,0 parametersdictionary parametersDictionary��  ��  � m  	�	���
�� 
bool��  ��  � o      ���� 40 showtvhomescreensyncpane showTVHomeScreenSyncPane� ��� n 	�	���� I  	�	�������� 0 logthis logThis� ���� b  	�	���� m  	�	��� ��� 4 s h o w T V H o m e S c r e e n S y n c P a n e :  � o  	�	����� 40 showtvhomescreensyncpane showTVHomeScreenSyncPane��  ��  �  f  	�	�� ��� Z 	�	�������� = 	�	���� o  	�	����� 40 showtvhomescreensyncpane showTVHomeScreenSyncPane� m  	�	���
�� boovfals� r  	�	���� m  	�	��� ��� 4 - - s k i p - t v - h o m e - s c r e e n - s y n c� l     ������ n      ���  ;  	�	�� o  	�	����� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l 	�	���������  ��  ��  � ��� r  	�	���� l 	�	������� c  	�	���� l 	�	������� n 	�	���� I  	�	�������� 0 valueforkey_ valueForKey_� ���� m  	�	��� ���  s h o w T V R o o m P a n e��  ��  � o  	�	����� ,0 parametersdictionary parametersDictionary��  ��  � m  	�	���
�� 
bool��  ��  � o      ����  0 showtvroompane showTVRoomPane� ��� n 	�	���� I  	�	�������� 0 logthis logThis� ���� b  	�	���� m  	�	��� ���   s h o w T V R o o m P a n e :  � o  	�	�����  0 showtvroompane showTVRoomPane��  ��  �  f  	�	�� ��� Z 	�	�������� = 	�	���� o  	�	�����  0 showtvroompane showTVRoomPane� m  	�	���
�� boovfals� r  	�	���� m  	�	��� ��� : - - s k i p - w h e r e - i s - t h i s - a p p l e - t v� l     ������ n      ���  ;  	�	�� o  	�	����� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l 	�	���������  ��  ��  � ��� r  	�	���� l 	�	������� c  	�	���� l 	�	������� n 	�	���� I  	�	������� 0 valueforkey_ valueForKey_� ��~� m  	�	��� ��� 0 s h o w R e s t o r e C o m p l e t e d P a n e�~  �  � o  	�	��}�} ,0 parametersdictionary parametersDictionary��  ��  � m  	�	��|
�| 
bool��  ��  � o      �{�{ 40 showrestorecompletedpane showRestoreCompletedPane� ��� n 	�

��� I  	�

�z��y�z 0 logthis logThis� ��x� b  	�
��� m  	�
�� ��� 4 s h o w R e s t o r e C o m p l e t e d P a n e :  � o  

�w�w 40 showrestorecompletedpane showRestoreCompletedPane�x  �y  �  f  	�	�� 	 		  Z 

		�v�u	 = 

			 o  

�t�t 40 showrestorecompletedpane showRestoreCompletedPane	 m  

�s
�s boovfals	 r  

			 m  

		 �				 0 - - s k i p - r e s t o r e - c o m p l e t e d	 l     	
�r�q	
 n      			  ;  

	 o  

�p�p 20 setupsuppressionoptions setupSuppressionOptions�r  �q  �v  �u  	 			 l 
 
 �o�n�m�o  �n  �m  	 			 r  
 
.			 l 
 
*	�l�k	 c  
 
*			 l 
 
(	�j�i	 n 
 
(			 I  
!
(�h	�g�h 0 valueforkey_ valueForKey_	 	�f	 m  
!
$		 �		 . s h o w U p d a t e C o m p l e t e d P a n e�f  �g  	 o  
 
!�e�e ,0 parametersdictionary parametersDictionary�j  �i  	 m  
(
)�d
�d 
bool�l  �k  	 o      �c�c 20 showupdatecompletedpane showUpdateCompletedPane	 			 n 
/
;		 	 I  
0
;�b	!�a�b 0 logthis logThis	! 	"�`	" b  
0
7	#	$	# m  
0
3	%	% �	&	& 2 s h o w U p d a t e C o m p l e t e d P a n e :  	$ o  
3
6�_�_ 20 showupdatecompletedpane showUpdateCompletedPane�`  �a  	   f  
/
0	 	'	(	' Z 
<
P	)	*�^�]	) = 
<
A	+	,	+ o  
<
?�\�\ 20 showupdatecompletedpane showUpdateCompletedPane	, m  
?
@�[
�[ boovfals	* r  
D
L	-	.	- m  
D
G	/	/ �	0	0 . - - s k i p - u p d a t e - c o m p l e t e d	. l     	1�Z�Y	1 n      	2	3	2  ;  
J
K	3 o  
G
J�X�X 20 setupsuppressionoptions setupSuppressionOptions�Z  �Y  �^  �]  	( 	4	5	4 l 
Q
Q�W�V�U�W  �V  �U  	5 	6	7	6 l 
Q
Q�T	8	9�T  	8 O I Append the language and locale parameters to the end of the skipped list   	9 �	:	: �   A p p e n d   t h e   l a n g u a g e   a n d   l o c a l e   p a r a m e t e r s   t o   t h e   e n d   o f   t h e   s k i p p e d   l i s t	7 	;	<	; l 
Q
Q�S	=	>�S  	= M G the script library will create a space-delimited string from the lists   	> �	?	? �   t h e   s c r i p t   l i b r a r y   w i l l   c r e a t e   a   s p a c e - d e l i m i t e d   s t r i n g   f r o m   t h e   l i s t s	< 	@	A	@ Z  
Q
�	B	C�R�Q	B F  
Q
`	D	E	D l 
Q
V	F�P�O	F = 
Q
V	G	H	G o  
Q
T�N�N $0 showlanguagepane showLanguagePane	H m  
T
U�M
�M boovfals�P  �O  	E l 
Y
^	I�L�K	I = 
Y
^	J	K	J o  
Y
\�J�J &0 shouldsetlanguage shouldSetLanguage	K m  
\
]�I
�I boovtrue�L  �K  	C k  
c
�	L	L 	M	N	M r  
c
o	O	P	O I  
c
k�H	Q�G�H R0 'derivelanguagecodematchinglanguagetitle 'deriveLanguageCodeMatchingLanguageTitle	Q 	R�F	R o  
d
g�E�E 40 languagecodedisplaytitle languageCodeDisplayTitle�F  �G  	P o      �D�D (0 targetlanguagecode targetLanguageCode	N 	S	T	S n 
p
|	U	V	U I  
q
|�C	W�B�C 0 logthis logThis	W 	X�A	X b  
q
x	Y	Z	Y m  
q
t	[	[ �	\	\ ( t a r g e t L a n g u a g e C o d e :  	Z o  
t
w�@�@ (0 targetlanguagecode targetLanguageCode�A  �B  	V  f  
p
q	T 	]	^	] r  
}
�	_	`	_ m  
}
�	a	a �	b	b  - - l a n g u a g e	` l     	c�?�>	c n      	d	e	d  ;  
�
�	e o  
�
��=�= 20 setupsuppressionoptions setupSuppressionOptions�?  �>  	^ 	f�<	f r  
�
�	g	h	g o  
�
��;�; (0 targetlanguagecode targetLanguageCode	h l     	i�:�9	i n      	j	k	j  ;  
�
�	k o  
�
��8�8 20 setupsuppressionoptions setupSuppressionOptions�:  �9  �<  �R  �Q  	A 	l	m	l l 
�
��7�6�5�7  �6  �5  	m 	n	o	n Z  
�
�	p	q�4�3	p F  
�
�	r	s	r l 
�
�	t�2�1	t = 
�
�	u	v	u o  
�
��0�0  0 showregionpane showRegionPane	v m  
�
��/
�/ boovfals�2  �1  	s l 
�
�	w�.�-	w = 
�
�	x	y	x o  
�
��,�, "0 shouldsetregion shouldSetRegion	y m  
�
��+
�+ boovtrue�.  �-  	q k  
�
�	z	z 	{	|	{ r  
�
�	}	~	} I  
�
��*	�)�* J0 #derivelocalecodematchinglocaletitle #deriveLocaleCodeMatchingLocaleTitle	 	��(	� o  
�
��'�' 00 localecodedisplaytitle localeCodeDisplayTitle�(  �)  	~ o      �&�& $0 targetlocalecode targetLocaleCode	| 	�	�	� n 
�
�	�	�	� I  
�
��%	��$�% 0 logthis logThis	� 	��#	� b  
�
�	�	�	� m  
�
�	�	� �	�	� $ t a r g e t L o c a l e C o d e :  	� o  
�
��"�" $0 targetlocalecode targetLocaleCode�#  �$  	�  f  
�
�	� 	�	�	� r  
�
�	�	�	� m  
�
�	�	� �	�	�  - - l o c a l e	� l     	��!� 	� n      	�	�	�  ;  
�
�	� o  
�
��� 20 setupsuppressionoptions setupSuppressionOptions�!  �   	� 	��	� r  
�
�	�	�	� o  
�
��� $0 targetlocalecode targetLocaleCode	� l     	���	� n      	�	�	�  ;  
�
�	� o  
�
��� 20 setupsuppressionoptions setupSuppressionOptions�  �  �  �4  �3  	o 	�	�	� l 
�
�����  �  �  	� 	�	�	� l  
�
��	�	��  	�   EXECUTE COMMAND    	� �	�	� "   E X E C U T E   C O M M A N D  	� 	�	�	� O  
�
�	�	�	� I  
�
��	��� :0 cnfgpreparespecifieddevices CNFGprepareSpecifiedDevices	� 	�	�	� o  
�
��� 0 
theseecids 
theseECIDs	� 	�	�	� o  
�
��� 0 shouldusemdm shouldUseMDM	� 	�	�	� o  
�
��� (0 mdmcertificatepath MDMCertificatePath	� 	�	�	� o  
�
��� 0 enrollmenturl enrollmentURL	� 	�	�	� o  
�
��� 00 shouldsupervisedevices shouldSuperviseDevices	� 	�	�	� o  
�
��� 00 allowpairingwithitunes allowPairingWithiTunes	� 	�	�	� o  
�
��� 20 hostcertificatefilepath hostCertificateFilePath	� 	�	�	� o  
�
��� $0 organizationname organizationName	� 	�	�	� o  
�
��� *0 organizationaddress organizationAddress	� 	�	�	� o  
�
��
�
 00 organizationdepartment organizationDepartment	� 	�	�	� o  
�
��	�	 &0 organizationphone organizationPhone	� 	�	�	� o  
�
��� &0 organizationemail organizationEmail	� 	��	� o  
�
��� 20 setupsuppressionoptions setupSuppressionOptions�  �  	� 4  
�
��	�
� 
scpt	� m  
�
�	�	� �	�	� * C o n f i g u r a t i o n   U t i l i t y	� 	�	�	� l   ����  �  �  	� 	�	�	� l    �	�	��  	� ( " PASS DEVICE ECIDs TO NEXT ACTION    	� �	�	� D   P A S S   D E V I C E   E C I D s   T O   N E X T   A C T I O N  	� 	�	�	� L   	�	� o   � �  0 
theseecids 
theseECIDs	� 	���	� l ��������  ��  ��  ��   Y R      ��	�	�
�� .ascrerr ****      � ****	� o      ���� (0 errormessagestring errorMessageString	� ��	���
�� 
errn	� o      ���� 0 errornumber errorNumber��   Z k  ?	�	� 	�	�	� n 	�	�	� I  ��	����� 0 logthis logThis	� 	���	� o  ���� (0 errormessagestring errorMessageString��  ��  	�  f  	� 	���	� Z  ?	�	���	�	� > 	�	�	� o  ���� 0 errornumber errorNumber	� m  ������	� k  2	�	� 	�	�	� r  -	�	�	� K  '	�	� ��	����� 60 nsapplescripterrormessage NSAppleScriptErrorMessage	� o  "%���� (0 errormessagestring errorMessageString��  	� n      	�	�	� 1  (,��
�� 
pcnt	� o  '(���� 0 errorref errorRef	� 	���	� L  .2	�	� m  .1��
�� 
msng��  ��  	� R  5?����	�
�� .ascrerr ****      � ****��  	� ��	���
�� 
errn	� m  9<��������  ��  ��   E 	�	�	� l     ��������  ��  ��  	� 	�	�	� l      ��	�	���  	� = 7 HANDLER CALLED BEFORE ACTION VIEW APPEARS IN WORKFLOW    	� �	�	� n   H A N D L E R   C A L L E D   B E F O R E   A C T I O N   V I E W   A P P E A R S   I N   W O R K F L O W  	� 	�	�	� i    	�	�	� I      �������� 
0 opened  ��  ��  	� k     	�	� 	�	�	� n    	�	�	� I    ��	����� 0 logthis logThis	� 	���	� m    	�	� �	�	�  o p e n e d ( )��  ��  	�  f     	� 	���	� I    �������� &0 populatecodemenus populateCodeMenus��  ��  ��  	� 	�
 	� l     ��������  ��  ��  
  


 l      ��

��  
 \ V HANDLER CALLED TO STORE THE CURRENT SELECTIONS. CALLED WHEN WORKFLOW IS SAVED OR RUN    
 �

 �   H A N D L E R   C A L L E D   T O   S T O R E   T H E   C U R R E N T   S E L E C T I O N S .   C A L L E D   W H E N   W O R K F L O W   I S   S A V E D   O R   R U N  
 


 i     

	
 I      �������� $0 updateparameters updateParameters��  ��  
	 k     2



 


 n    


 I    ��
���� 0 logthis logThis
 
��
 m    

 �

 $ u p d a t e P a r a m e t e r s ( )��  ��  
  f     
 


 l   ��

��  
 I C write the current value of the locale popup menu to the parameters   
 �

 �   w r i t e   t h e   c u r r e n t   v a l u e   o f   t h e   l o c a l e   p o p u p   m e n u   t o   t h e   p a r a m e t e r s
 


 r    


 n   


 o    ���� *0 titleofselecteditem titleOfSelectedItem
 o    ���� (0 languagespopupmenu languagesPopupMenu
 o      ���� ,0 currentlanguagetitle currentLanguageTitle
 


 r    
 
!
  n   
"
#
" I    �������� 0 
parameters  ��  ��  
#  f    
! l     
$����
$ o      ���� ,0 parametersdictionary parametersDictionary��  ��  
 
%
&
% n    
'
(
' I     ��
)���� $0 setvalue_forkey_ setValue_forKey_
) 
*
+
* o    ���� ,0 currentlanguagetitle currentLanguageTitle
+ 
,��
, m    
-
- �
.
. 0 l a n g u a g e C o d e D i s p l a y T i t l e��  ��  
( o    ���� ,0 parametersdictionary parametersDictionary
& 
/
0
/ l  ! !��
1
2��  
1 I C write the current value of the locale popup menu to the parameters   
2 �
3
3 �   w r i t e   t h e   c u r r e n t   v a l u e   o f   t h e   l o c a l e   p o p u p   m e n u   t o   t h e   p a r a m e t e r s
0 
4
5
4 r   ! *
6
7
6 n  ! (
8
9
8 o   & (���� *0 titleofselecteditem titleOfSelectedItem
9 o   ! &���� $0 localespopupmenu localesPopupMenu
7 o      ���� (0 currentlocaletitle currentLocaleTitle
5 
:��
: n  + 2
;
<
; I   , 2��
=���� $0 setvalue_forkey_ setValue_forKey_
= 
>
?
> o   , -���� (0 currentlocaletitle currentLocaleTitle
? 
@��
@ m   - .
A
A �
B
B , l o c a l e C o d e D i s p l a y T i t l e��  ��  
< o   + ,���� ,0 parametersdictionary parametersDictionary��  
 
C
D
C l     ��������  ��  ��  
D 
E
F
E l      ��
G
H��  
G 1 + SAVE AN APPLESCRIPT LIST TO PROPERTY LIST    
H �
I
I V   S A V E   A N   A P P L E S C R I P T   L I S T   T O   P R O P E R T Y   L I S T  
F 
J
K
J i   ! $
L
M
L I      ��
N���� *0 savelist_toplistat_ saveList_toPlistAt_
N 
O
P
O o      ���� 0 thelist theList
P 
Q��
Q o      ���� 0 thepath thePath��  ��  
M k     +
R
R 
S
T
S r     

U
V
U n    
W
X
W I    ��
Y���� "0 arraywitharray_ arrayWithArray_
Y 
Z��
Z o    ���� 0 thelist theList��  ��  
X n    
[
\
[ o    ���� 0 nsarray NSArray
\ m     ��
�� misccura
V o      ���� 0 thearray theArray
T 
]
^
] r    
_
`
_ n   
a
b
a I    ��
c���� &0 stringwithstring_ stringWithString_
c 
d��
d o    ���� 0 thepath thePath��  ��  
b n   
e
f
e o    ���� 0 nsstring NSString
f m    ��
�� misccura
` o      ���� 0 thepath thePath
^ 
g
h
g r    
i
j
i n   
k
l
k I    �������� <0 stringbyexpandingtildeinpath stringByExpandingTildeInPath��  ��  
l o    ���� 0 thepath thePath
j o      ���� 0 thepath thePath
h 
m
n
m n   %
o
p
o I    %��
q���� 20 writetofile_atomically_ writeToFile_atomically_
q 
r
s
r o     ���� 0 thepath thePath
s 
t��
t m     !��
�� boovtrue��  ��  
p o    ���� 0 thearray theArray
n 
u��
u l  & +
v
w
x
v I  & +��
y��
�� .ascrcmnt****      � ****
y 1   & '��
�� 
rslt��  
w    so we can see if it saved   
x �
z
z 4   s o   w e   c a n   s e e   i f   i t   s a v e d��  
K 
{
|
{ l     ��������  ��  ��  
| 
}
~
} l      ��

���  
 0 * READ A PROPERTY LIST AS APPLESCRIPT LIST    
� �
�
� T   R E A D   A   P R O P E R T Y   L I S T   A S   A P P L E S C R I P T   L I S T  
~ 
�
�
� i   % (
�
�
� I      ��
����� 0 readplistat_ readPlistAt_
� 
���
� o      ���� 0 thepath thePath��  ��  
� k     "
�
� 
�
�
� r     

�
�
� n    
�
�
� I    ��
����� &0 stringwithstring_ stringWithString_
� 
���
� o    ���� 0 thepath thePath��  ��  
� n    
�
�
� o    �� 0 nsstring NSString
� m     �~
�~ misccura
� o      �}�} 0 thepath thePath
� 
�
�
� r    
�
�
� n   
�
�
� I    �|�{�z�| <0 stringbyexpandingtildeinpath stringByExpandingTildeInPath�{  �z  
� o    �y�y 0 thepath thePath
� o      �x�x 0 thepath thePath
� 
�
�
� r    
�
�
� n   
�
�
� I    �w
��v�w 40 arraywithcontentsoffile_ arrayWithContentsOfFile_
� 
��u
� o    �t�t 0 thepath thePath�u  �v  
� n   
�
�
� o    �s�s 0 nsarray NSArray
� m    �r
�r misccura
� o      �q�q 0 thearray theArray
� 
��p
� L    "
�
� c    !
�
�
� o    �o�o 0 thearray theArray
� m     �n
�n 
list�p  
� 
�
�
� l     �m�l�k�m  �l  �k  
� 
�
�
� i   ) ,
�
�
� I      �j
��i�j 0 	getutifor 	getUTIFor
� 
��h
� o      �g�g 0 thispath thisPath�h  �i  
� k     D
�
� 
�
�
� r     

�
�
� n    
�
�
� I    �f
��e�f $0 fileurlwithpath_ fileURLWithPath_
� 
��d
� o    �c�c 0 thispath thisPath�d  �e  
� n    
�
�
� o    �b�b 	0 NSURL  
� m     �a
�a misccura
� o      �`�` 0 annsurl anNSURL
� 
�
�
� r    +
�
�
� n   
�
�
� I    �_
��^�_ @0 getresourcevalue_forkey_error_ getResourceValue_forKey_error_
� 
�
�
� l   
��]�\
� m    �[
�[ 
obj �]  �\  
� 
�
�
� l   
��Z�Y
� n   
�
�
� o    �X�X 00 nsurltypeidentifierkey NSURLTypeIdentifierKey
� m    �W
�W misccura�Z  �Y  
� 
��V
� l   
��U�T
� m    �S
�S 
obj �U  �T  �V  �^  
� o    �R�R 0 annsurl anNSURL
� J      
�
� 
�
�
� o      �Q�Q 0 	theresult 	theResult
� 
�
�
� o      �P�P 0 theuti theUTI
� 
��O
� o      �N�N 0 theerror theError�O  
� 
�
�
� Z  , ?
�
��M�L
� H   , .
�
� o   , -�K�K 0 	theresult 	theResult
� R   1 ;�J
��I
�J .ascrerr ****      � ****
� l  3 :
��H�G
� c   3 :
�
�
� n  3 8
�
�
� I   4 8�F�E�D�F ,0 localizeddescription localizedDescription�E  �D  
� o   3 4�C�C 0 theerror theError
� m   8 9�B
�B 
ctxt�H  �G  �I  �M  �L  
� 
��A
� L   @ D
�
� c   @ C
�
�
� o   @ A�@�@ 0 theuti theUTI
� m   A B�?
�? 
ctxt�A  
� 
�
�
� l     �>�=�<�>  �=  �<  
� 
�
�
� i   - 0
�
�
� I      �;�:�9�; &0 populatecodemenus populateCodeMenus�:  �9  
� k     �
�
� 
�
�
� l     �8
�
��8  
� 4 . get the display titles for the language codes   
� �
�
� \   g e t   t h e   d i s p l a y   t i t l e s   f o r   t h e   l a n g u a g e   c o d e s
� 
�
�
� r     
�
�
� I     �7�6�5�7 00 retrievelanguagetitles retrieveLanguageTitles�6  �5  
� o      �4�4 60 languagecodesdisplaynames languageCodesDisplayNames
� 
�
�
� r    
�
�
� I    �3
��2�3 &0 sortlistofstrings sortListOfStrings
� 
��1
� o   	 
�0�0 60 languagecodesdisplaynames languageCodesDisplayNames�1  �2  
� o      �/�/ 60 languagecodesdisplaynames languageCodesDisplayNames
� 
�
�
� l   �.
�
��.  
� 2 , clear and set the values for the popup menu   
� �
�
� X   c l e a r   a n d   s e t   t h e   v a l u e s   f o r   t h e   p o p u p   m e n u
� 
�
�
� O   
�
�
� I    �-�,�+�-  0 removeallitems removeAllItems�,  �+  
� o    �*�* (0 languagespopupmenu languagesPopupMenu
� 
� 
� O    / I   ( .�)�(�) *0 additemswithtitles_ addItemsWithTitles_ �' o   ) *�&�& 60 languagecodesdisplaynames languageCodesDisplayNames�'  �(   o     %�%�% (0 languagespopupmenu languagesPopupMenu   l  0 0�$�$      select the stored default    �		 4   s e l e c t   t h e   s t o r e d   d e f a u l t 

 r   0 7 n  0 5 I   1 5�#�"�!�# 0 
parameters  �"  �!    f   0 1 l     � � o      �� ,0 parametersdictionary parametersDictionary�   �    r   8 B l  8 @�� c   8 @ l  8 >�� n  8 > I   9 >��� 0 valueforkey_ valueForKey_ � m   9 : � 0 l a n g u a g e C o d e D i s p l a y T i t l e�  �   o   8 9�� ,0 parametersdictionary parametersDictionary�  �   m   > ?�
� 
TEXT�  �   o      �� 40 languagecodedisplaytitle languageCodeDisplayTitle   Z   C h!"��! >  C F#$# o   C D�� 40 languagecodedisplaytitle languageCodeDisplayTitle$ m   D E%% �&&  " Q   I d'(�' O  L [)*) I   T Z�+�� ,0 selectitemwithtitle_ selectItemWithTitle_+ ,�, o   U V�� 40 languagecodedisplaytitle languageCodeDisplayTitle�  �  * o   L Q�� (0 languagespopupmenu languagesPopupMenu( R      �
�	�
�
 .ascrerr ****      � ****�	  �  �  �  �    -.- l  i i����  �  �  . /0/ l  i i�12�  1 2 , get the display titles for the locale codes   2 �33 X   g e t   t h e   d i s p l a y   t i t l e s   f o r   t h e   l o c a l e   c o d e s0 454 r   i p676 I   i n���� ,0 retrievelocaletitles retrieveLocaleTitles�  �  7 o      � �  20 localecodesdisplaynames localeCodesDisplayNames5 898 r   q y:;: I   q w��<���� &0 sortlistofstrings sortListOfStrings< =��= o   r s���� 20 localecodesdisplaynames localeCodesDisplayNames��  ��  ; o      ���� 20 localecodesdisplaynames localeCodesDisplayNames9 >?> l  z z��@A��  @ 2 , clear and set the values for the popup menu   A �BB X   c l e a r   a n d   s e t   t h e   v a l u e s   f o r   t h e   p o p u p   m e n u? CDC O  z �EFE I   � ���������  0 removeallitems removeAllItems��  ��  F o   z ���� $0 localespopupmenu localesPopupMenuD GHG O  � �IJI I   � ���K���� *0 additemswithtitles_ addItemsWithTitles_K L��L o   � ����� 20 localecodesdisplaynames localeCodesDisplayNames��  ��  J o   � ����� $0 localespopupmenu localesPopupMenuH MNM l  � ���OP��  O    select the stored default   P �QQ 4   s e l e c t   t h e   s t o r e d   d e f a u l tN RSR r   � �TUT l  � �V����V c   � �WXW l  � �Y����Y n  � �Z[Z I   � ���\���� 0 valueforkey_ valueForKey_\ ]��] m   � �^^ �__ , l o c a l e C o d e D i s p l a y T i t l e��  ��  [ o   � ����� ,0 parametersdictionary parametersDictionary��  ��  X m   � ���
�� 
TEXT��  ��  U o      ���� 00 localecodedisplaytitle localeCodeDisplayTitleS `a` Z   � �bc����b >  � �ded o   � ����� 00 localecodedisplaytitle localeCodeDisplayTitlee m   � �ff �gg  c Q   � �hi��h O  � �jkj I   � ���l���� ,0 selectitemwithtitle_ selectItemWithTitle_l m��m o   � ����� 00 localecodedisplaytitle localeCodeDisplayTitle��  ��  k o   � ����� $0 localespopupmenu localesPopupMenui R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  a n��n l  � ���������  ��  ��  ��  
� opo l     ��������  ��  ��  p qrq i   1 4sts I      ��u���� &0 sortlistofstrings sortListOfStringsu v��v o      ���� 0 
sourcelist 
sourceList��  ��  t k     ww xyx l     ��z{��  z 1 + sorts a passed AppleScript list of strings   { �|| V   s o r t s   a   p a s s e d   A p p l e S c r i p t   l i s t   o f   s t r i n g sy }~} l     �����   < 6 create a Cocoa array from the passed AppleScript list   � ��� l   c r e a t e   a   C o c o a   a r r a y   f r o m   t h e   p a s s e d   A p p l e S c r i p t   l i s t~ ��� r     
��� n    ��� I    ������� "0 arraywitharray_ arrayWithArray_� ���� o    ���� 0 
sourcelist 
sourceList��  ��  � n    ��� o    ���� 0 nsarray NSArray� m     ��
�� misccura� l     ������ o      ���� 0 
cocoaarray 
CocoaArray��  ��  � ��� l   ������  �   sort the Cocoa array   � ��� *   s o r t   t h e   C o c o a   a r r a y� ��� r    ��� n   ��� I    ������� 60 sortedarrayusingselector_ sortedArrayUsingSelector_� ���� m    �� ��� 2 l o c a l i z e d S t a n d a r d C o m p a r e :��  ��  � o    ���� 0 
cocoaarray 
CocoaArray� l     ������ o      ���� 0 sorteditems sortedItems��  ��  � ��� l   ������  � < 6 return the Cocoa array coerced to an AppleScript list   � ��� l   r e t u r n   t h e   C o c o a   a r r a y   c o e r c e d   t o   a n   A p p l e S c r i p t   l i s t� ���� L    �� l   ������ c    ��� o    ���� 0 sorteditems sortedItems� m    ��
�� 
list��  ��  ��  r ��� l     ��������  ��  ��  � ��� i   5 8��� I      �������� .0 retrievelanguagecodes retrieveLanguageCodes��  ��  � k     !�� ��� r     ��� c     ��� l    	������ n    	��� n   	��� I    	�������� 0 resourcepath resourcePath��  ��  � I    �������� 
0 bundle  ��  ��  �  f     ��  ��  � m   	 
��
�� 
TEXT� o      ���� (0 resourcefolderpath resourceFolderPath� ��� r    ��� b    ��� b    ��� o    ���� (0 resourcefolderpath resourceFolderPath� m    �� ���  /� m    �� ��� < S u p p o r t e d   L a n g u a g e   C o d e s . p l i s t� o      ���� >0 languagecodespropertylistpath languageCodesPropertyListPath� ��� r    ��� n   ��� I    ������� 0 readplistat_ readPlistAt_� ���� o    ���� >0 languagecodespropertylistpath languageCodesPropertyListPath��  ��  �  g    � o      ���� 0 languagecodes languageCodes� ���� L    !�� o     ���� 0 languagecodes languageCodes��  � ��� l     ��������  ��  ��  � ��� i   9 <��� I      �������� 00 retrievelanguagetitles retrieveLanguageTitles��  ��  � k     �� ��� r     ��� I     �������� .0 retrievelanguagecodes retrieveLanguageCodes��  ��  � o      ���� 0 languagecodes languageCodes� ��� r    ��� I    ������� 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes� ���� o   	 
���� 0 languagecodes languageCodes��  ��  � o      ���� 60 languagecodesdisplaynames languageCodesDisplayNames� ���� L    �� o    ���� 60 languagecodesdisplaynames languageCodesDisplayNames��  � ��� l     ��������  ��  ��  � ��� i   = @��� I      �������� *0 retrievelocalecodes retrieveLocaleCodes��  ��  � k     !�� ��� r     ��� c     ��� l    	������ n    	��� n   	��� I    	�������� 0 resourcepath resourcePath��  ��  � I    ����~�� 
0 bundle  �  �~  �  f     ��  ��  � m   	 
�}
�} 
TEXT� o      �|�| (0 resourcefolderpath resourceFolderPath� ��� r    ��� b    ��� b    ��� o    �{�{ (0 resourcefolderpath resourceFolderPath� m    �� ���  /� m    �� ��� 8 S u p p o r t e d   L o c a l e   C o d e s . p l i s t� o      �z�z :0 localecodespropertylistpath localeCodesPropertyListPath�    r     n    I    �y�x�y 0 readplistat_ readPlistAt_ �w o    �v�v :0 localecodespropertylistpath localeCodesPropertyListPath�w  �x    g     o      �u�u 0 localecodes localeCodes �t L    !		 o     �s�s 0 localecodes localeCodes�t  � 

 l     �r�q�p�r  �q  �p    i   A D I      �o�n�m�o ,0 retrievelocaletitles retrieveLocaleTitles�n  �m   k       r      I     �l�k�j�l *0 retrievelocalecodes retrieveLocaleCodes�k  �j   o      �i�i 0 localecodes localeCodes  r     I    �h�g�h 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes �f o   	 
�e�e 0 localecodes localeCodes�f  �g   o      �d�d 20 localecodesdisplaynames localeCodesDisplayNames �c L     o    �b�b 20 localecodesdisplaynames localeCodesDisplayNames�c    l     �a�`�_�a  �`  �_     i   E H!"! I      �^#�]�^ R0 'derivelanguagecodematchinglanguagetitle 'deriveLanguageCodeMatchingLanguageTitle# $�\$ o      �[�[ &0 thislanguagetitle thisLanguageTitle�\  �]  " k     "%% &'& l     �Z()�Z  ( e _ this routine works because the titles list is dynamically derived from the language codes list   ) �** �   t h i s   r o u t i n e   w o r k s   b e c a u s e   t h e   t i t l e s   l i s t   i s   d y n a m i c a l l y   d e r i v e d   f r o m   t h e   l a n g u a g e   c o d e s   l i s t' +,+ r     -.- I     �Y�X�W�Y .0 retrievelanguagecodes retrieveLanguageCodes�X  �W  . o      �V�V 0 languagecodes languageCodes, /0/ r    121 I    �U�T�S�U 00 retrievelanguagetitles retrieveLanguageTitles�T  �S  2 o      �R�R  0 languagetitles languageTitles0 343 r    565 c    787 l   9�Q�P9 n   :;: I    �O<�N�O "0 indexof_inlist_ indexOf_inList_< =>= o    �M�M &0 thislanguagetitle thisLanguageTitle> ?�L? o    �K�K  0 languagetitles languageTitles�L  �N  ;  g    �Q  �P  8 m    �J
�J 
long6 o      �I�I 0 	itemindex 	itemIndex4 @�H@ L    "AA l   !B�G�FB n    !CDC 4     �EE
�E 
cobjE o    �D�D 0 	itemindex 	itemIndexD o    �C�C 0 languagecodes languageCodes�G  �F  �H    FGF l     �B�A�@�B  �A  �@  G HIH i   I LJKJ I      �?L�>�? J0 #derivelocalecodematchinglocaletitle #deriveLocaleCodeMatchingLocaleTitleL M�=M o      �<�< "0 thislocaletitle thisLocaleTitle�=  �>  K k     "NN OPO l     �;QR�;  Q c ] this routine works because the titles list is dynamically derived from the locale codes list   R �SS �   t h i s   r o u t i n e   w o r k s   b e c a u s e   t h e   t i t l e s   l i s t   i s   d y n a m i c a l l y   d e r i v e d   f r o m   t h e   l o c a l e   c o d e s   l i s tP TUT r     VWV I     �:�9�8�: *0 retrievelocalecodes retrieveLocaleCodes�9  �8  W o      �7�7 0 localecodes localeCodesU XYX r    Z[Z I    �6�5�4�6 ,0 retrievelocaletitles retrieveLocaleTitles�5  �4  [ o      �3�3 0 localetitles localeTitlesY \]\ r    ^_^ c    `a` l   b�2�1b n   cdc I    �0e�/�0 "0 indexof_inlist_ indexOf_inList_e fgf o    �.�. "0 thislocaletitle thisLocaleTitleg h�-h o    �,�, 0 localetitles localeTitles�-  �/  d  g    �2  �1  a m    �+
�+ 
long_ o      �*�* 0 	itemindex 	itemIndex] i�)i L    "jj l   !k�(�'k n    !lml 4     �&n
�& 
cobjn o    �%�% 0 	itemindex 	itemIndexm o    �$�$ 0 localecodes localeCodes�(  �'  �)  I opo l     �#�"�!�#  �"  �!  p qrq l      � st�   s ; 5 DERIVE THE OFFSET OF AN ITEM IN AN APPLESCRIPT LIST    t �uu j   D E R I V E   T H E   O F F S E T   O F   A N   I T E M   I N   A N   A P P L E S C R I P T   L I S T  r vwv i   M Pxyx I      �z�� "0 indexof_inlist_ indexOf_inList_z {|{ o      �� 0 avalue aValue| }�} o      �� 0 thelist theList�  �  y k     %~~ � r     
��� n    ��� I    ���� "0 arraywitharray_ arrayWithArray_� ��� o    �� 0 thelist theList�  �  � n    ��� o    �� 0 nsarray NSArray� m     �
� misccura� o      �� 0 thearray theArray� ��� r    ��� n   ��� I    ����  0 indexofobject_ indexOfObject_� ��� o    �� 0 avalue aValue�  �  � o    �� 0 thearray theArray� o      �� 0 theindex theIndex� ��� Z    %����� =    ��� o    �� 0 theindex theIndex� n   ��� o    �
�
 0 
nsnotfound 
NSNotFound� m    �	
�	 misccura� L    �� m    ��  �  � L   ! %�� l  ! $���� [   ! $��� o   ! "�� 0 theindex theIndex� m   " #�� �  �  �  w ��� l     ����  �  �  � ��� l      � ���   � C = DERIVE THE DISPLAY NAMES FOR LOCALE/COUNTRY/LANGUAGES CODES    � ��� z   D E R I V E   T H E   D I S P L A Y   N A M E S   F O R   L O C A L E / C O U N T R Y / L A N G U A G E S   C O D E S  � ��� i   Q T��� I      ������� 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes� ���� o      ���� 0 
thesecodes 
theseCodes��  ��  � k     >�� ��� r     ��� J     ����  � l     ������ o      ���� ,0 displaynamesforcodes displayNamesForCodes��  ��  � ��� r    ��� n   ��� I    �������� 0 currentlocale currentLocale��  ��  � n   ��� o    ���� 0 nslocale NSLocale� m    ��
�� misccura� o      ���� 0 
thislocale 
thisLocale� ��� Y    ;�������� k    6�� ��� r    #��� n    !��� 4    !���
�� 
cobj� o     ���� 0 i  � o    ���� 0 
thesecodes 
theseCodes� o      ���� 0 thiscode thisCode� ��� r   $ 1��� c   $ /��� l  $ -������ n  $ -��� I   % -������� 40 displaynameforkey_value_ displayNameForKey_value_� ��� l  % (������ n  % (��� o   & (���� (0 nslocaleidentifier NSLocaleIdentifier� m   % &��
�� misccura��  ��  � ���� o   ( )���� 0 thiscode thisCode��  ��  � o   $ %���� 0 
thislocale 
thisLocale��  ��  � m   - .��
�� 
TEXT� o      ���� "0 thisdisplayname thisDisplayName� ���� r   2 6��� o   2 3���� "0 thisdisplayname thisDisplayName� l     ������ n      ���  ;   4 5� o   3 4���� ,0 displaynamesforcodes displayNamesForCodes��  ��  ��  �� 0 i  � m    ���� � l   ������ I   �����
�� .corecnte****       ****� o    ���� 0 
thesecodes 
theseCodes��  ��  ��  ��  � ���� L   < >�� o   < =���� ,0 displaynamesforcodes displayNamesForCodes��  � ��� l     ��������  ��  ��  � ��� i   U X��� I      ������� 0 logthis logThis� ���� o      ���� 0 	itemtolog 	itemToLog��  ��  � Z     ������� =    ��� o     ���� 0 loggingstatus loggingStatus� m    ��
�� boovtrue� O   
 ��� I   �����
�� .ascrcmnt****      � ****� l   ������ b    ��� m    �� ��� F A C T I O N :   P r e p a r e   C o n n e c t e d   D e v i c e s :  � o    ���� 0 	itemtolog 	itemToLog��  ��  ��  � m   
 ��
�� misccura��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   LOCALIZATION ROUTINE   � ��� *   L O C A L I Z A T I O N   R O U T I N E� ��� i   Y \��� I      ������� 40 getlocalizedstringforkey getLocalizedStringForKey�  ��  1      ��
�� 
kMsg��  ��  � k       r      b     	 b     	 o     ���� .0 actionidentiferstring actionIdentiferString	 m    

 �  - 1    ��
�� 
kMsg 1      ��
�� 
kMsg �� L     c     n    l   ���� n    I    ������ H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_  1    ��
�� 
kMsg  l   ���� m    ��
�� 
msng��  ��   �� l   ���� m    ��
�� 
msng��  ��  ��  ��   I    �������� 
0 bundle  ��  ��  ��  ��    f     m    ��
�� 
utxt��  � �� l     ��������  ��  ��  ��    �� l     ��������  ��  ��  ��       �� ��   ���� 60 prepare_connected_devices Prepare_Connected_Devices  �� !"�� 60 prepare_connected_devices Prepare_Connected_Devices! ## ����$
�� misccura
�� 
pcls$ �%%  A M B u n d l e A c t i o n" ��&�������� >'()*+,-./012345678��  & ����������������������������������������~�}�|
�� 
pare�� 0 loggingstatus loggingStatus�� (0 languagespopupmenu languagesPopupMenu�� $0 localespopupmenu localesPopupMenu�� .0 actionidentiferstring actionIdentiferString�� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�� 
0 opened  �� $0 updateparameters updateParameters�� *0 savelist_toplistat_ saveList_toPlistAt_�� 0 readplistat_ readPlistAt_�� 0 	getutifor 	getUTIFor�� &0 populatecodemenus populateCodeMenus�� &0 sortlistofstrings sortListOfStrings�� .0 retrievelanguagecodes retrieveLanguageCodes�� 00 retrievelanguagetitles retrieveLanguageTitles�� *0 retrievelocalecodes retrieveLocaleCodes�� ,0 retrievelocaletitles retrieveLocaleTitles�� R0 'derivelanguagecodematchinglanguagetitle 'deriveLanguageCodeMatchingLanguageTitle�� J0 #derivelocalecodematchinglocaletitle #deriveLocaleCodeMatchingLocaleTitle� "0 indexof_inlist_ indexOf_inList_�~ 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes�} 0 logthis logThis�| 40 getlocalizedstringforkey getLocalizedStringForKey��  
�� boovtrue
�� 
msng
�� 
msng' �{ G�z�y9:�x�{ @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�z �w;�w ;  �v�u�t�v 	0 input  �u 0 anaction anAction�t 0 errorref errorRef�y  9 B�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�s 	0 input  �r 0 anaction anAction�q 0 errorref errorRef�p 0 
theseecids 
theseECIDs�o ,0 parametersdictionary parametersDictionary�n 0 shouldusemdm shouldUseMDM�m 0 enrollmenturl enrollmentURL�l ,0 useanchorcertificate useAnchorCertificate�k (0 mdmcertificatepath MDMCertificatePath�j "0 thisfilemanager thisFileManager�i 0 fileexistence fileExistence�h 00 shouldsupervisedevices shouldSuperviseDevices�g 40 shouldenableshareddevice shouldEnableSharedDevice�f 00 allowpairingwithitunes allowPairingWithiTunes�e $0 organizationname organizationName�d *0 organizationaddress organizationAddress�c &0 organizationemail organizationEmail�b &0 organizationphone organizationPhone�a 00 organizationdepartment organizationDepartment�` 20 hostcertificatefilepath hostCertificateFilePath�_ 20 setupsuppressionoptions setupSuppressionOptions�^ $0 showlanguagepane showLanguagePane�] &0 shouldsetlanguage shouldSetLanguage�\ 40 languagecodedisplaytitle languageCodeDisplayTitle�[  0 showregionpane showRegionPane�Z "0 shouldsetregion shouldSetRegion�Y 00 localecodedisplaytitle localeCodeDisplayTitle�X $0 showsimsetuppane showSIMSetupPane�W "0 showprivacypane showPrivacyPane�V "0 showappleidpane showAppleIDPane�U ,0 showintendeduserpane showIntendedUserPane�T $0 showapplepaypane showApplePayPane�S *0 showdiagnosticspane showDiagnosticsPane�R $0 showlocationpane showLocationPane�Q $0 showpasscodepane showPasscodePane�P "0 showrestorepane showRestorePane�O *0 showdisplayzoompane showDisplayZoomPane�N $0 showappstorepane showAppStorePane�M  0 showsafetypane showSafetyPane�L ,0 showmultitaskingpane showMultitaskingPane�K ,0 showactionbuttonpane showActionButtonPane�J 00 showtermsofaddresspane showTermsOfAddressPane�I B0 showaccessibilityappearancepane showAccessibilityAppearancePane�H "0 showtouchidpane showTouchIDPane�G 0 showsiripane showSiriPane�F (0 showscreentimepane showScreenTimePane�E 00 showsoftwareupdatepane showSoftwareUpdatePane�D :0 showimessageandfacetimepane showiMessageAndFaceTimePane�C $0 showtruetonepane showTrueTonePane�B 20 showmovefromandroidpane showMoveFromAndroidPane�A *0 showscreensaverpane showScreenSaverPane�@ (0 showtaptosetuppane showTapToSetupPane�? >0 showphonenumberpermissionpane showPhoneNumberPermissionPane�> (0 showhomebuttonpane showHomeButtonPane�= 00 showwatchmigrationpane showWatchMigrationPane�< <0 shownewfeaturehighlightspane showNewFeatureHighlightsPane�; "0 showwelcomepane showWelcomePane�: 80 showsignintotvproviderpane showSignInToTVProviderPane�9 40 showtvhomescreensyncpane showTVHomeScreenSyncPane�8  0 showtvroompane showTVRoomPane�7 40 showrestorecompletedpane showRestoreCompletedPane�6 20 showupdatecompletedpane showUpdateCompletedPane�5 (0 targetlanguagecode targetLanguageCode�4 $0 targetlocalecode targetLocaleCode�3 (0 errormessagestring errorMessageString�2 0 errornumber errorNumber: � U�1�0 n�/�. ��-�, � ��+ � � � � �&.�*�)�(�'V�&iq�%��������)3CM]g�������&0S]n���������/9CV`j}����������#-@JTgq{���������*4>Xbl���������� *4GQ[nx����������
1;EXbl����������			%	/�$	[	a�#	�	��"	��!� �<�����1 0 logthis logThis
�0 
list�/ 40 getlocalizedstringforkey getLocalizedStringForKey�. 0 
parameters  �- 0 valueforkey_ valueForKey_
�, 
bool
�+ 
ctxt
�* misccura�) 0 nsfilemanager NSFileManager�(  0 defaultmanager defaultManager�' &0 fileexistsatpath_ fileExistsAtPath_�& 0 	getutifor 	getUTIFor
�% 
msng�$ R0 'derivelanguagecodematchinglanguagetitle 'deriveLanguageCodeMatchingLanguageTitle�# J0 #derivelocalecodematchinglocaletitle #deriveLocaleCodeMatchingLocaleTitle
�" 
scpt�! �  :0 cnfgpreparespecifieddevices CNFGprepareSpecifiedDevices� (0 errormessagestring errorMessageString< ���
� 
errn� 0 errornumber errorNumber�  ���� 60 nsapplescripterrormessage NSAppleScriptErrorMessage
� 
pcnt
� 
errn�x@)�k+ O
���&E�O�jv  )j)�k+ Y hO)j+ E�O��k+ �&E�O)�%k+ O�e  ̤�k+ �&E�O)�%k+ O��  )j)�k+ Y hO��k+ �&E�O)a �%k+ O�e  ��a k+ �&E�O)a �%k+ O�a   )j)a k+ Y hOa a ,j+ E�O��k+ �&E�O�f  )j)a k+ Y hO)�k+ a  )j)a k+ Y hY a E�Y a E�Oa E�O�a k+ �&E�O)a �%k+ O�a  k+ �&E�O)a !�%k+ O�e &�a "k+ �&E�O)a #�%k+ O�a $k+ �&E�O)a %�%k+ O�a &k+ �&E�O)a '�%k+ O�a (k+ �&E^ O)a )] %k+ O�a *k+ �&E^ O)a +] %k+ O�a ,k+ �&E^ O)a -] %k+ O�a .k+ �&E^ O)a /] %k+ O] a 0  )j)a 1k+ Y hOa a ,j+ E�O�] k+ �&E�O�f  )j)a 2k+ Y hO)] k+ a 3 )j)a 4k+ Y hY 3a E�Oa E^ Oa E�Oa E�Oa E^ Oa E^ Oa E^ OjvE^ O�a 5k+ �&E^ O)a 6] %k+ O] f  a 7] 6FY hOfE^ O] f  ;�a 8k+ �&E^ O)a 9] %k+ O] e  �a :k+ �&E^ Y hY hO�a ;k+ �&E^ O)a <] %k+ O] f  a =] 6FY hO] f  ;�a >k+ �&E^ O)a ?] %k+ O] e  �a @k+ �&E^ Y hY hO�a Ak+ �&E^ O)a B] %k+ O] f  a C] 6FY hO�a Dk+ �&E^ O)a E] %k+ O] f  a F] 6FY hO�a Gk+ �&E^ O)a H] %k+ O] f  a I] 6FY hO�a Jk+ �&E^ O)a K] %k+ O] f  a L] 6FY hO�a Mk+ �&E^ O)a N] %k+ O] f  a O] 6FY hO�a Pk+ �&E^  O)a Q]  %k+ O]  f  a R] 6FY hO�a Sk+ �&E^ !O)a T] !%k+ O] !f  a U] 6FY hO�a Vk+ �&E^ "O)a W] "%k+ O] "f  a X] 6FY hO�a Yk+ �&E^ #O)a Z] #%k+ O] #f  a [] 6FY hO�a \k+ �&E^ $O)a ]] $%k+ O] $f  a ^] 6FY hO�a _k+ �&E^ %O)a `] %%k+ O] %f  a a] 6FY hO�a bk+ �&E^ &O)a c] &%k+ O] &f  a d] 6FY hO�a ek+ �&E^ 'O)a f] '%k+ O] 'f  a g] 6FY hO�a hk+ �&E^ (O)a i] (%k+ O] (f  a j] 6FY hO�a kk+ �&E^ )O)a l] )%k+ O] )f  a m] 6FY hO�a nk+ �&E^ *O)a o] *%k+ O] *f  a p] 6FY hO�a qk+ �&E^ +O)a r] +%k+ O] +f  a s] 6FY hO�a tk+ �&E^ ,O)a u] ,%k+ O] ,f  a v] 6FY hO�a wk+ �&E^ -O)a x] -%k+ O] -f  a y] 6FY hO�a zk+ �&E^ .O)a {] .%k+ O] .f  a |] 6FY hO�a }k+ �&E^ /O)a ~] /%k+ O] /f  a ] 6FY hO�a �k+ �&E^ 0O)a �] 0%k+ O] 0f  a �] 6FY hO�a �k+ �&E^ 1O)a �] 1%k+ O] 1f  a �] 6FY hO�a �k+ �&E^ 2O)a �] 2%k+ O] 2f  a �] 6FY hO�a �k+ �&E^ 3O)a �] 3%k+ O] 3f  a �] 6FY hO�a �k+ �&E^ 4O)a �] 4%k+ O] 4f  a �] 6FY hO�a �k+ �&E^ 5O)a �] 5%k+ O] 5f  a �] 6FY hO�a �k+ �&E^ 6O)a �] 6%k+ O] 6f  a �] 6FY hO�a �k+ �&E^ 7O)a �] 7%k+ O] 7f  a �] 6FY hO�a �k+ �&E^ 8O)a �] 8%k+ O] 8f  a �] 6FY hO�a �k+ �&E^ 9O)a �] 9%k+ O] 9f  a �] 6FY hO�a �k+ �&E^ :O)a �] :%k+ O] :f  a �] 6FY hO�a �k+ �&E^ ;O)a �] ;%k+ O] ;f  a �] 6FY hO�a �k+ �&E^ <O)a �] <%k+ O] <f  a �] 6FY hO�a �k+ �&E^ =O)a �] =%k+ O] =f  a �] 6FY hO] f 	 	] e �& 0*] k+ �E^ >O)a �] >%k+ Oa �] 6FO] >] 6FY hO] f 	 	] e �& 0*] k+ �E^ ?O)a �] ?%k+ Oa �] 6FO] ?] 6FY hO)a �a �/  *������] ��] ] ] ] a �+ �UO�OPW :X � �)] @k+ O] Aa � a �] @l�a �,FOa Y )a �a �lh( �	���=>�� 
0 opened  �  �  =  > 	���� 0 logthis logThis� &0 populatecodemenus populateCodeMenus� )�k+ O*j+ ) �
	��?@�� $0 updateparameters updateParameters�  �  ? ���� ,0 currentlanguagetitle currentLanguageTitle� ,0 parametersdictionary parametersDictionary� (0 currentlocaletitle currentLocaleTitle@ 
�
�	�
-�
A�
 0 logthis logThis�	 *0 titleofselecteditem titleOfSelectedItem� 0 
parameters  � $0 setvalue_forkey_ setValue_forKey_� 3)�k+ Ob  �,E�O)j+ E�O���l+ Ob  �,E�O���l+ * �
M��AB�� *0 savelist_toplistat_ saveList_toPlistAt_� �C� C  �� � 0 thelist theList�  0 thepath thePath�  A �������� 0 thelist theList�� 0 thepath thePath�� 0 thearray theArrayB 	������������������
�� misccura�� 0 nsarray NSArray�� "0 arraywitharray_ arrayWithArray_�� 0 nsstring NSString�� &0 stringwithstring_ stringWithString_�� <0 stringbyexpandingtildeinpath stringByExpandingTildeInPath�� 20 writetofile_atomically_ writeToFile_atomically_
�� 
rslt
�� .ascrcmnt****      � ****� ,��,�k+ E�O��,�k+ E�O�j+ E�O��el+ O�j + ��
�����DE���� 0 readplistat_ readPlistAt_�� ��F�� F  ���� 0 thepath thePath��  D ������ 0 thepath thePath�� 0 thearray theArrayE ��������������
�� misccura�� 0 nsstring NSString�� &0 stringwithstring_ stringWithString_�� <0 stringbyexpandingtildeinpath stringByExpandingTildeInPath�� 0 nsarray NSArray�� 40 arraywithcontentsoffile_ arrayWithContentsOfFile_
�� 
list�� #��,�k+ E�O�j+ E�O��,�k+ E�O��&, ��
�����GH���� 0 	getutifor 	getUTIFor�� ��I�� I  ���� 0 thispath thisPath��  G ������������ 0 thispath thisPath�� 0 annsurl anNSURL�� 0 	theresult 	theResult�� 0 theuti theUTI�� 0 theerror theErrorH 	������������������
�� misccura�� 	0 NSURL  �� $0 fileurlwithpath_ fileURLWithPath_
�� 
obj �� 00 nsurltypeidentifierkey NSURLTypeIdentifierKey�� @0 getresourcevalue_forkey_error_ getResourceValue_forKey_error_
�� 
cobj�� ,0 localizeddescription localizedDescription
�� 
ctxt�� E��,�k+ E�O����,�m+ E[�k/E�Z[�l/E�Z[�m/E�ZO� )j�j+ �&Y hO��&- ��
�����JK���� &0 populatecodemenus populateCodeMenus��  ��  J ������������ 60 languagecodesdisplaynames languageCodesDisplayNames�� ,0 parametersdictionary parametersDictionary�� 40 languagecodedisplaytitle languageCodeDisplayTitle�� 20 localecodesdisplaynames localeCodesDisplayNames�� 00 localecodedisplaytitle localeCodeDisplayTitleK ��������������%��������^f�� 00 retrievelanguagetitles retrieveLanguageTitles�� &0 sortlistofstrings sortListOfStrings��  0 removeallitems removeAllItems�� *0 additemswithtitles_ addItemsWithTitles_�� 0 
parameters  �� 0 valueforkey_ valueForKey_
�� 
TEXT�� ,0 selectitemwithtitle_ selectItemWithTitle_��  ��  �� ,0 retrievelocaletitles retrieveLocaleTitles�� �*j+  E�O*�k+ E�Ob   *j+ UOb   *�k+ UO)j+ E�O��k+ �&E�O��   b   *�k+ 	UW X 
 hY hO*j+ E�O*�k+ E�Ob   *j+ UOb   *�k+ UO��k+ �&E�O��   b   *�k+ 	UW X 
 hY hOP. ��t����LM���� &0 sortlistofstrings sortListOfStrings�� ��N�� N  ���� 0 
sourcelist 
sourceList��  L �������� 0 
sourcelist 
sourceList�� 0 
cocoaarray 
CocoaArray�� 0 sorteditems sortedItemsM �����������
�� misccura�� 0 nsarray NSArray�� "0 arraywitharray_ arrayWithArray_�� 60 sortedarrayusingselector_ sortedArrayUsingSelector_
�� 
list�� ��,�k+ E�O��k+ E�O��&/ �������OP���� .0 retrievelanguagecodes retrieveLanguageCodes��  ��  O �������� (0 resourcefolderpath resourceFolderPath�� >0 languagecodespropertylistpath languageCodesPropertyListPath�� 0 languagecodes languageCodesP ������������ 
0 bundle  �� 0 resourcepath resourcePath
�� 
TEXT�� 0 readplistat_ readPlistAt_�� ")j+  j+ �&E�O��%�%E�O*�k+ E�O�0 �������QR���� 00 retrievelanguagetitles retrieveLanguageTitles��  ��  Q ������ 0 languagecodes languageCodes�� 60 languagecodesdisplaynames languageCodesDisplayNamesR ������ .0 retrievelanguagecodes retrieveLanguageCodes�� 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes�� *j+  E�O*�k+ E�O�1 �������ST���� *0 retrievelocalecodes retrieveLocaleCodes��  ��  S �������� (0 resourcefolderpath resourceFolderPath�� :0 localecodespropertylistpath localeCodesPropertyListPath�� 0 localecodes localeCodesT ������������ 
0 bundle  �� 0 resourcepath resourcePath
�� 
TEXT�� 0 readplistat_ readPlistAt_�� ")j+  j+ �&E�O��%�%E�O*�k+ E�O�2 ������UV���� ,0 retrievelocaletitles retrieveLocaleTitles��  ��  U ������ 0 localecodes localeCodes�� 20 localecodesdisplaynames localeCodesDisplayNamesV ������ *0 retrievelocalecodes retrieveLocaleCodes�� 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes�� *j+  E�O*�k+ E�O�3 ��"����WX���� R0 'derivelanguagecodematchinglanguagetitle 'deriveLanguageCodeMatchingLanguageTitle�� ��Y�� Y  ���� &0 thislanguagetitle thisLanguageTitle��  W ��������� &0 thislanguagetitle thisLanguageTitle�� 0 languagecodes languageCodes��  0 languagetitles languageTitles� 0 	itemindex 	itemIndexX �~�}�|�{�z�~ .0 retrievelanguagecodes retrieveLanguageCodes�} 00 retrievelanguagetitles retrieveLanguageTitles�| "0 indexof_inlist_ indexOf_inList_
�{ 
long
�z 
cobj�� #*j+  E�O*j+ E�O*��l+ �&E�O��/E4 �yK�x�wZ[�v�y J0 #derivelocalecodematchinglocaletitle #deriveLocaleCodeMatchingLocaleTitle�x �u\�u \  �t�t "0 thislocaletitle thisLocaleTitle�w  Z �s�r�q�p�s "0 thislocaletitle thisLocaleTitle�r 0 localecodes localeCodes�q 0 localetitles localeTitles�p 0 	itemindex 	itemIndex[ �o�n�m�l�k�o *0 retrievelocalecodes retrieveLocaleCodes�n ,0 retrievelocaletitles retrieveLocaleTitles�m "0 indexof_inlist_ indexOf_inList_
�l 
long
�k 
cobj�v #*j+  E�O*j+ E�O*��l+ �&E�O��/E5 �jy�i�h]^�g�j "0 indexof_inlist_ indexOf_inList_�i �f_�f _  �e�d�e 0 avalue aValue�d 0 thelist theList�h  ] �c�b�a�`�c 0 avalue aValue�b 0 thelist theList�a 0 thearray theArray�` 0 theindex theIndex^ �_�^�]�\�[
�_ misccura�^ 0 nsarray NSArray�] "0 arraywitharray_ arrayWithArray_�\  0 indexofobject_ indexOfObject_�[ 0 
nsnotfound 
NSNotFound�g &��,�k+ E�O��k+ E�O���,  jY �k6 �Z��Y�X`a�W�Z 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes�Y �Vb�V b  �U�U 0 
thesecodes 
theseCodes�X  ` �T�S�R�Q�P�O�T 0 
thesecodes 
theseCodes�S ,0 displaynamesforcodes displayNamesForCodes�R 0 
thislocale 
thisLocale�Q 0 i  �P 0 thiscode thisCode�O "0 thisdisplayname thisDisplayNamea �N�M�L�K�J�I�H�G
�N misccura�M 0 nslocale NSLocale�L 0 currentlocale currentLocale
�K .corecnte****       ****
�J 
cobj�I (0 nslocaleidentifier NSLocaleIdentifier�H 40 displaynameforkey_value_ displayNameForKey_value_
�G 
TEXT�W ?jvE�O��,j+ E�O +k�j kh ��/E�O���,�l+ �&E�O��6F[OY��O�7 �F��E�Dcd�C�F 0 logthis logThis�E �Be�B e  �A�A 0 	itemtolog 	itemToLog�D  c �@�@ 0 	itemtolog 	itemToLogd �?��>
�? misccura
�> .ascrcmnt****      � ****�C b  e  � 	�%j UY h8 �=��<�;fg�:�= 40 getlocalizedstringforkey getLocalizedStringForKey�< �9h�9 h  �8
�8 
kMsg�;  f �7
�7 
kMsgg 
�6�5�4�3�6 
0 bundle  
�5 
msng�4 H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_
�3 
utxt�: b  �%�%E�O)j+ ���m+ �&ascr  ��ޭ