FasdUAS 1.101.10   ��   ��    k             l     ��  ��    - '  Prepare_Connected_Devices.applescript     � 	 	 N     P r e p a r e _ C o n n e c t e d _ D e v i c e s . a p p l e s c r i p t   
  
 l     ��  ��    !   Prepare Connected Devices     �   6     P r e p a r e   C o n n e c t e d   D e v i c e s      l     ��������  ��  ��        l     ��  ��    &    Created by Sal Work on 5/4/16.     �   @     C r e a t e d   b y   S a l   W o r k   o n   5 / 4 / 1 6 .      l     ��  ��    = 7  Copyright � 2016-2022 Apple Inc. All rights reserved.     �   n     C o p y r i g h t   �   2 0 1 6 - 2 0 2 2   A p p l e   I n c .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        h     �� �� 60 prepare_connected_devices Prepare_Connected_Devices  k            ! " ! j     �� #
�� 
pare # 4     �� $
�� 
pcls $ m     % % � & &  A M B u n d l e A c t i o n "  ' ( ' l     ��������  ��  ��   (  ) * ) j   	 �� +�� 0 loggingstatus loggingStatus + m   	 
��
�� boovtrue *  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   outlet properties    1 � 2 2 $   o u t l e t   p r o p e r t i e s /  3 4 3 j    �� 5�� (0 languagespopupmenu languagesPopupMenu 5 m    ��
�� 
msng 4  6 7 6 j    �� 8�� $0 localespopupmenu localesPopupMenu 8 m    ��
�� 
msng 7  9 : 9 l     ��������  ��  ��   :  ; < ; j    �� =�� .0 actionidentiferstring actionIdentiferString = m     > > � ? ?  C N F G A C T - 0 8 <  @ A @ l     ��������  ��  ��   A  B C B l     ��������  ��  ��   C  D E D i     F G F I      �� H���� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_ H  I J I o      ���� 	0 input   J  K L K o      ���� 0 anaction anAction L  M�� M o      ���� 0 errorref errorRef��  ��   G k    
 N N  O P O n     Q R Q I    �� S���� 0 logthis logThis S  T�� T m     U U � V V  r u n W i t h I n p u t ( & )��  ��   R  f      P  W�� W Q   
 X Y Z X k   
	� [ [  \ ] \ r   
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
�` boovfals> r  $,ABA m  $'CC �DD  - - s k i p - a p p l e i dB l     E�_�^E n      FGF  ;  *+G o  '*�]�] 20 setupsuppressionoptions setupSuppressionOptions�_  �^  �c  �b  < HIH l 11�\�[�Z�\  �[  �Z  I JKJ r  1?LML l 1;N�Y�XN c  1;OPO l 19Q�W�VQ n 19RSR I  29�UT�T�U 0 valueforkey_ valueForKey_T U�SU m  25VV �WW   s h o w A p p l e P a y P a n e�S  �T  S o  12�R�R ,0 parametersdictionary parametersDictionary�W  �V  P m  9:�Q
�Q 
bool�Y  �X  M o      �P�P $0 showapplepaypane showApplePayPaneK XYX n @LZ[Z I  AL�O\�N�O 0 logthis logThis\ ]�M] b  AH^_^ m  AD`` �aa $ s h o w A p p l e P a y P a n e :  _ o  DG�L�L $0 showapplepaypane showApplePayPane�M  �N  [  f  @AY bcb Z Made�K�Jd = MRfgf o  MP�I�I $0 showapplepaypane showApplePayPaneg m  PQ�H
�H boovfalse r  U]hih m  UXjj �kk  - - s k i p - a p p l e p a yi l     l�G�Fl n      mnm  ;  [\n o  X[�E�E 20 setupsuppressionoptions setupSuppressionOptions�G  �F  �K  �J  c opo l bb�D�C�B�D  �C  �B  p qrq r  bpsts l blu�A�@u c  blvwv l bjx�?�>x n bjyzy I  cj�={�<�= 0 valueforkey_ valueForKey_{ |�;| m  cf}} �~~ & s h o w D i a g n o s t i c s P a n e�;  �<  z o  bc�:�: ,0 parametersdictionary parametersDictionary�?  �>  w m  jk�9
�9 
bool�A  �@  t o      �8�8 *0 showdiagnosticspane showDiagnosticsPaner � n q}��� I  r}�7��6�7 0 logthis logThis� ��5� b  ry��� m  ru�� ��� * s h o w D i a g n o s t i c s P a n e :  � o  ux�4�4 *0 showdiagnosticspane showDiagnosticsPane�5  �6  �  f  qr� ��� Z ~����3�2� = ~���� o  ~��1�1 *0 showdiagnosticspane showDiagnosticsPane� m  ���0
�0 boovfals� r  ����� m  ���� ��� $ - - s k i p - d i a g n o s t i c s� l     ��/�.� n      ���  ;  ��� o  ���-�- 20 setupsuppressionoptions setupSuppressionOptions�/  �.  �3  �2  � ��� l ���,�+�*�,  �+  �*  � ��� r  ����� l ����)�(� c  ����� l ����'�&� n ����� I  ���%��$�% 0 valueforkey_ valueForKey_� ��#� m  ���� ���   s h o w L o c a t i o n P a n e�#  �$  � o  ���"�" ,0 parametersdictionary parametersDictionary�'  �&  � m  ���!
�! 
bool�)  �(  � o      � �  $0 showlocationpane showLocationPane� ��� n ����� I  ������ 0 logthis logThis� ��� b  ����� m  ���� ��� $ s h o w L o c a t i o n P a n e :  � o  ���� $0 showlocationpane showLocationPane�  �  �  f  ��� ��� Z ������� = ����� o  ���� $0 showlocationpane showLocationPane� m  ���
� boovfals� r  ����� m  ���� ���  - - s k i p - l o c a t i o n� l     ���� n      ���  ;  ��� o  ���� 20 setupsuppressionoptions setupSuppressionOptions�  �  �  �  � ��� l ������  �  �  � ��� r  ����� l ������ c  ����� l ������ n ����� I  ������ 0 valueforkey_ valueForKey_� ��� m  ���� ���   s h o w P a s s c o d e P a n e�  �  � o  ���
�
 ,0 parametersdictionary parametersDictionary�  �  � m  ���	
�	 
bool�  �  � o      �� $0 showpasscodepane showPasscodePane� ��� n ����� I  ������ 0 logthis logThis� ��� b  ����� m  ���� ��� $ s h o w P a s s c o d e P a n e :  � o  ���� $0 showpasscodepane showPasscodePane�  �  �  f  ��� ��� Z ������� = ����� o  ���� $0 showpasscodepane showPasscodePane� m  ��� 
�  boovfals� r  ����� m  ���� ���  - - s k i p - p a s s c o d e� l     ������ n      ���  ;  ��� o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��  �  �  � ��� l ����������  ��  ��  � ��� r  ���� l �������� c  ����� l �������� n ����� I  ��������� 0 valueforkey_ valueForKey_� ���� m  ���� ���  s h o w R e s t o r e P a n e��  ��  � o  ������ ,0 parametersdictionary parametersDictionary��  ��  � m  ����
�� 
bool��  ��  � o      ���� "0 showrestorepane showRestorePane� ��� n ��� I  ������� 0 logthis logThis� ���� b  ��� m  �� ��� B s h o w R e s t o r e P a n e   ( i C l o u d   B a c k u p ) :  � o  ���� "0 showrestorepane showRestorePane��  ��  �  f  � ��� Z % ����  =  o  ���� "0 showrestorepane showRestorePane m  ��
�� boovfals r  ! m   �  - - s k i p - r e s t o r e l     ���� n      	
	  ;   
 o  ���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  �  l &&��������  ��  ��    r  &4 l &0���� c  &0 l &.���� n &. I  '.������ 0 valueforkey_ valueForKey_ �� m  '* � & s h o w D i s p l a y Z o o m P a n e��  ��   o  &'���� ,0 parametersdictionary parametersDictionary��  ��   m  ./��
�� 
bool��  ��   o      ���� *0 showdisplayzoompane showDisplayZoomPane  n 5A I  6A������ 0 logthis logThis  ��  b  6=!"! m  69## �$$ * s h o w D i s p l a y Z o o m P a n e :  " o  9<���� *0 showdisplayzoompane showDisplayZoomPane��  ��    f  56 %&% Z BV'(����' = BG)*) o  BE���� *0 showdisplayzoompane showDisplayZoomPane* m  EF��
�� boovfals( r  JR+,+ m  JM-- �..  - - s k i p - z o o m, l     /����/ n      010  ;  PQ1 o  MP���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  & 232 l WW��������  ��  ��  3 454 r  We676 l Wa8����8 c  Wa9:9 l W_;����; n W_<=< I  X_��>���� 0 valueforkey_ valueForKey_> ?��? m  X[@@ �AA   s h o w A p p S t o r e P a n e��  ��  = o  WX���� ,0 parametersdictionary parametersDictionary��  ��  : m  _`��
�� 
bool��  ��  7 o      ���� $0 showappstorepane showAppStorePane5 BCB n frDED I  gr��F���� 0 logthis logThisF G��G b  gnHIH m  gjJJ �KK $ s h o w A p p S t o r e P a n e :  I o  jm���� $0 showappstorepane showAppStorePane��  ��  E  f  fgC LML Z s�NO����N = sxPQP o  sv���� $0 showappstorepane showAppStorePaneQ m  vw��
�� boovfalsO r  {�RSR m  {~TT �UU  - - s k i p - a p p s t o r eS l     V����V n      WXW  ;  ��X o  ~����� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  M YZY l ����������  ��  ��  Z [\[ l  ����]^��  ]
             set showTOSPane to ((parametersDictionary's valueForKey:"showTOSPane") as boolean)
             my logThis("showTOSPane: " & showTOSPane)
             if showTOSPane is false then set the end of setupSuppressionOptions to "--skip-tos"
                ^ �__ 
                           s e t   s h o w T O S P a n e   t o   ( ( p a r a m e t e r s D i c t i o n a r y ' s   v a l u e F o r K e y : " s h o w T O S P a n e " )   a s   b o o l e a n ) 
                           m y   l o g T h i s ( " s h o w T O S P a n e :   "   &   s h o w T O S P a n e ) 
                           i f   s h o w T O S P a n e   i s   f a l s e   t h e n   s e t   t h e   e n d   o f   s e t u p S u p p r e s s i o n O p t i o n s   t o   " - - s k i p - t o s " 
                          \ `a` l ����������  ��  ��  a bcb r  ��ded l ��f����f c  ��ghg l ��i����i n ��jkj I  ����l���� 0 valueforkey_ valueForKey_l m��m m  ��nn �oo  s h o w T o u c h I D P a n e��  ��  k o  ������ ,0 parametersdictionary parametersDictionary��  ��  h m  ����
�� 
bool��  ��  e o      ���� "0 showtouchidpane showTouchIDPanec pqp n ��rsr I  ����t���� 0 logthis logThist u��u b  ��vwv m  ��xx �yy " s h o w T o u c h I D P a n e :  w o  ������ "0 showtouchidpane showTouchIDPane��  ��  s  f  ��q z{z Z ��|}����| = ��~~ o  ������ "0 showtouchidpane showTouchIDPane m  ����
�� boovfals} r  ����� m  ���� ���  - - s k i p - t o u c h i d� l     ������ n      ���  ;  ��� o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  { ��� l ����������  ��  ��  � ��� r  ����� l �������� c  ����� l �������� n ����� I  ��������� 0 valueforkey_ valueForKey_� ���� m  ���� ���  s h o w S i r i P a n e��  ��  � o  ������ ,0 parametersdictionary parametersDictionary��  ��  � m  ����
�� 
bool��  ��  � o      ���� 0 showsiripane showSiriPane� ��� n ����� I  ��������� 0 logthis logThis� ���� b  ����� m  ���� ���  s h o w S i r i P a n e :  � o  ������ 0 showsiripane showSiriPane��  ��  �  f  ��� ��� Z ��������� = ����� o  ������ 0 showsiripane showSiriPane� m  ����
�� boovfals� r  ����� m  ���� ���  - - s k i p - s i r i� l     ������ n      ���  ;  ��� o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l ������~��  �  �~  � ��� r  ����� l ����}�|� c  ����� l ����{�z� n ����� I  ���y��x�y 0 valueforkey_ valueForKey_� ��w� m  ���� ��� $ s h o w S c r e e n T i m e P a n e�w  �x  � o  ���v�v ,0 parametersdictionary parametersDictionary�{  �z  � m  ���u
�u 
bool�}  �|  � o      �t�t (0 showscreentimepane showScreenTimePane� ��� n ���� I  ��s��r�s 0 logthis logThis� ��q� b  ���� m  ���� ��� ( s h o w S c r e e n T i m e P a n e :  � o  � �p�p (0 showscreentimepane showScreenTimePane�q  �r  �  f  ��� ��� Z ���o�n� = ��� o  	�m�m (0 showscreentimepane showScreenTimePane� m  	
�l
�l boovfals� r  ��� m  �� ��� " - - s k i p - s c r e e n t i m e� l     ��k�j� n      ���  ;  � o  �i�i 20 setupsuppressionoptions setupSuppressionOptions�k  �j  �o  �n  � ��� l �h�g�f�h  �g  �f  � ��� r  )��� l %��e�d� c  %��� l #��c�b� n #��� I  #�a��`�a 0 valueforkey_ valueForKey_� ��_� m  �� ��� , s h o w S o f t w a r e U p d a t e P a n e�_  �`  � o  �^�^ ,0 parametersdictionary parametersDictionary�c  �b  � m  #$�]
�] 
bool�e  �d  � o      �\�\ 00 showsoftwareupdatepane showSoftwareUpdatePane� ��� n *6��� I  +6�[��Z�[ 0 logthis logThis� ��Y� b  +2��� m  +.�� ��� 0 s h o w S o f t w a r e U p d a t e P a n e :  � o  .1�X�X 00 showsoftwareupdatepane showSoftwareUpdatePane�Y  �Z  �  f  *+� ��� Z 7K���W�V� = 7<��� o  7:�U�U 00 showsoftwareupdatepane showSoftwareUpdatePane� m  :;�T
�T boovfals� r  ?G��� m  ?B�� ��� , - - s k i p - s o f t w a r e - u p d a t e� l     ��S�R� n      ���  ;  EF� o  BE�Q�Q 20 setupsuppressionoptions setupSuppressionOptions�S  �R  �W  �V  � ��� l LL�P�O�N�P  �O  �N  � ��� r  LZ   l LV�M�L c  LV l LT�K�J n LT I  MT�I�H�I 0 valueforkey_ valueForKey_ 	�G	 m  MP

 � 6 s h o w i M e s s a g e A n d F a c e T i m e P a n e�G  �H   o  LM�F�F ,0 parametersdictionary parametersDictionary�K  �J   m  TU�E
�E 
bool�M  �L   o      �D�D :0 showimessageandfacetimepane showiMessageAndFaceTimePane�  n [g I  \g�C�B�C 0 logthis logThis �A b  \c m  \_ � : s h o w i M e s s a g e A n d F a c e T i m e P a n e :   o  _b�@�@ :0 showimessageandfacetimepane showiMessageAndFaceTimePane�A  �B    f  [\  Z h|�?�> = hm o  hk�=�= :0 showimessageandfacetimepane showiMessageAndFaceTimePane m  kl�<
�< boovfals r  px m  ps � 8 - - s k i p - i m e s s a g e - a n d - f a c e t i m e l      �;�:  n      !"!  ;  vw" o  sv�9�9 20 setupsuppressionoptions setupSuppressionOptions�;  �:  �?  �>   #$# l }}�8�7�6�8  �7  �6  $ %&% l }}�5'(�5  '  # added MAY 01-2017   ( �)) & #   a d d e d   M A Y   0 1 - 2 0 1 7& *+* r  }�,-, l }�.�4�3. c  }�/0/ l }�1�2�11 n }�232 I  ~��04�/�0 0 valueforkey_ valueForKey_4 5�.5 m  ~�66 �77   s h o w T r u e T o n e P a n e�.  �/  3 o  }~�-�- ,0 parametersdictionary parametersDictionary�2  �1  0 m  ���,
�, 
bool�4  �3  - o      �+�+ $0 showtruetonepane showTrueTonePane+ 898 n ��:;: I  ���*<�)�* 0 logthis logThis< =�(= b  ��>?> m  ��@@ �AA $ s h o w T r u e T o n e P a n e :  ? o  ���'�' $0 showtruetonepane showTrueTonePane�(  �)  ;  f  ��9 BCB Z ��DE�&�%D = ��FGF o  ���$�$ $0 showtruetonepane showTrueTonePaneG m  ���#
�# boovfalsE r  ��HIH m  ��JJ �KK   - - s k i p - t r u e - t o n eI l     L�"�!L n      MNM  ;  ��N o  ��� �  20 setupsuppressionoptions setupSuppressionOptions�"  �!  �&  �%  C OPO l ������  �  �  P QRQ r  ��STS l ��U��U c  ��VWV l ��X��X n ��YZY I  ���[�� 0 valueforkey_ valueForKey_[ \�\ m  ��]] �^^ . s h o w M o v e F r o m A n d r o i d P a n e�  �  Z o  ���� ,0 parametersdictionary parametersDictionary�  �  W m  ���
� 
bool�  �  T o      �� 20 showmovefromandroidpane showMoveFromAndroidPaneR _`_ n ��aba I  ���c�� 0 logthis logThisc d�d b  ��efe m  ��gg �hh 2 s h o w M o v e F r o m A n d r o i d P a n e :  f o  ���� 20 showmovefromandroidpane showMoveFromAndroidPane�  �  b  f  ��` iji Z ��kl��k = ��mnm o  ���� 20 showmovefromandroidpane showMoveFromAndroidPanen m  ���
� boovfalsl r  ��opo m  ��qq �rr  - - s k i p - a n d r o i dp l     s�
�	s n      tut  ;  ��u o  ���� 20 setupsuppressionoptions setupSuppressionOptions�
  �	  �  �  j vwv l ������  �  �  w xyx r  ��z{z l ��|��| c  ��}~} l ���� n ����� I  ��� ����  0 valueforkey_ valueForKey_� ���� m  ���� ��� & s h o w S c r e e n S a v e r P a n e��  ��  � o  ������ ,0 parametersdictionary parametersDictionary�  �  ~ m  ����
�� 
bool�  �  { o      ���� *0 showscreensaverpane showScreenSaverPaney ��� n ����� I  ��������� 0 logthis logThis� ���� b  ����� m  ���� ��� * s h o w S c r e e n S a v e r P a n e :  � o  ������ *0 showscreensaverpane showScreenSaverPane��  ��  �  f  ��� ��� Z �������� = � ��� o  ������ *0 showscreensaverpane showScreenSaverPane� m  ����
�� boovfals� r  ��� m  �� ��� & - - s k i p - s c r e e n - s a v e r� l     ������ n      ���  ;  	
� o  	���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l ��������  ��  ��  � ��� r  ��� l ������ c  ��� l ������ n ��� I  ������� 0 valueforkey_ valueForKey_� ���� m  �� ��� $ s h o w T a p T o S e t u p P a n e��  ��  � o  ���� ,0 parametersdictionary parametersDictionary��  ��  � m  ��
�� 
bool��  ��  � o      ���� (0 showtaptosetuppane showTapToSetupPane� ��� n +��� I   +������� 0 logthis logThis� ���� b   '��� m   #�� ��� ( s h o w T a p T o S e t u p P a n e :  � o  #&���� (0 showtaptosetuppane showTapToSetupPane��  ��  �  f   � ��� Z ,@������� = ,1��� o  ,/���� (0 showtaptosetuppane showTapToSetupPane� m  /0��
�� boovfals� r  4<��� m  47�� ��� & - - s k i p - t a p - t o - s e t u p� l     ������ n      ���  ;  :;� o  7:���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l AA��������  ��  ��  � ��� r  AO��� l AK������ c  AK��� l AI������ n AI��� I  BI������� 0 valueforkey_ valueForKey_� ���� m  BE�� ��� : s h o w P h o n e N u m b e r P e r m i s s i o n P a n e��  ��  � o  AB���� ,0 parametersdictionary parametersDictionary��  ��  � m  IJ��
�� 
bool��  ��  � o      ���� >0 showphonenumberpermissionpane showPhoneNumberPermissionPane� ��� n P\��� I  Q\������� 0 logthis logThis� ���� b  QX��� m  QT�� ��� > s h o w P h o n e N u m b e r P e r m i s s i o n P a n e :  � o  TW���� >0 showphonenumberpermissionpane showPhoneNumberPermissionPane��  ��  �  f  PQ� ��� Z ]q������� = ]b��� o  ]`���� >0 showphonenumberpermissionpane showPhoneNumberPermissionPane� m  `a��
�� boovfals� r  em��� m  eh�� ��� < - - s k i p - p h o n e - n u m b e r - p e r m i s s i o n� l     ������ n      ���  ;  kl� o  hk���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  � ��� l rr��������  ��  ��  � ��� r  r���� l r|������ c  r|��� l rz������ n rz��� I  sz������� 0 valueforkey_ valueForKey_� ���� m  sv�� ��� $ s h o w H o m e B u t t o n P a n e��  ��  � o  rs���� ,0 parametersdictionary parametersDictionary��  ��  � m  z{��
�� 
bool��  ��  � o      ���� (0 showhomebuttonpane showHomeButtonPane� ��� n ����� I  ��������� 0 logthis logThis�  ��  b  �� m  �� � ( s h o w H o m e B u t t o n P a n e :   o  ������ (0 showhomebuttonpane showHomeButtonPane��  ��  �  f  ���  Z ������ = ��	
	 o  ������ (0 showhomebuttonpane showHomeButtonPane
 m  ����
�� boovfals r  �� m  �� � $ - - s k i p - h o m e - b u t t o n l     ���� n        ;  �� o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��    l ����������  ��  ��    r  �� l ������ c  �� l ������ n �� I  �������� 0 valueforkey_ valueForKey_ �� m  ��   �!! , s h o w W a t c h M i g r a t i o n P a n e��  ��   o  ������ ,0 parametersdictionary parametersDictionary��  ��   m  ����
�� 
bool��  ��   o      ���� 00 showwatchmigrationpane showWatchMigrationPane "#" n ��$%$ I  ����&���� 0 logthis logThis& '��' b  ��()( m  ��** �++ 0 s h o w W a t c h M i g r a t i o n P a n e :  ) o  ������ 00 showwatchmigrationpane showWatchMigrationPane��  ��  %  f  ��# ,-, Z ��./����. = ��010 o  ������ 00 showwatchmigrationpane showWatchMigrationPane1 m  ����
�� boovfals/ r  ��232 m  ��44 �55 , - - s k i p - w a t c h - m i g r a t i o n3 l     6����6 n      787  ;  ��8 o  ������ 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  - 9:9 l ����������  ��  ��  : ;<; r  ��=>= l ��?����? c  ��@A@ l ��B����B n ��CDC I  ����E���� 0 valueforkey_ valueForKey_E F��F m  ��GG �HH 8 s h o w N e w F e a t u r e H i g h l i g h t s P a n e��  ��  D o  ������ ,0 parametersdictionary parametersDictionary��  ��  A m  ����
�� 
bool��  ��  > o      ���� <0 shownewfeaturehighlightspane showNewFeatureHighlightsPane< IJI n ��KLK I  ����M���� 0 logthis logThisM N��N b  ��OPO m  ��QQ �RR < s h o w N e w F e a t u r e H i g h l i g h t s P a n e :  P o  ���� <0 shownewfeaturehighlightspane showNewFeatureHighlightsPane��  ��  L  f  ��J STS Z �UV�~�}U = ��WXW o  ���|�| <0 shownewfeaturehighlightspane showNewFeatureHighlightsPaneX m  ���{
�{ boovfalsV r  � YZY m  ��[[ �\\ 2 - - s k i p - f e a t u r e - h i g h l i g h t sZ l     ]�z�y] n      ^_^  ;  ��_ o  ���x�x 20 setupsuppressionoptions setupSuppressionOptions�z  �y  �~  �}  T `a` l �w�v�u�w  �v  �u  a bcb r  ded l f�t�sf c  ghg l i�r�qi n jkj I  �pl�o�p 0 valueforkey_ valueForKey_l m�nm m  	nn �oo  s h o w W e l c o m e P a n e�n  �o  k o  �m�m ,0 parametersdictionary parametersDictionary�r  �q  h m  �l
�l 
bool�t  �s  e o      �k�k "0 showwelcomepane showWelcomePanec pqp n  rsr I   �jt�i�j 0 logthis logThist u�hu b  vwv m  xx �yy " s h o w W e l c o m e P a n e :  w o  �g�g "0 showwelcomepane showWelcomePane�h  �i  s  f  q z{z Z !5|}�f�e| = !&~~ o  !$�d�d "0 showwelcomepane showWelcomePane m  $%�c
�c boovfals} r  )1��� m  ),�� ���  - - s k i p - w e l c o m e� l     ��b�a� n      ���  ;  /0� o  ,/�`�` 20 setupsuppressionoptions setupSuppressionOptions�b  �a  �f  �e  { ��� l 66�_�^�]�_  �^  �]  � ��� r  6D��� l 6@��\�[� c  6@��� l 6>��Z�Y� n 6>��� I  7>�X��W�X 0 valueforkey_ valueForKey_� ��V� m  7:�� ��� 4 s h o w S i g n I n T o T V P r o v i d e r P a n e�V  �W  � o  67�U�U ,0 parametersdictionary parametersDictionary�Z  �Y  � m  >?�T
�T 
bool�\  �[  � o      �S�S 80 showsignintotvproviderpane showSignInToTVProviderPane� ��� n EQ��� I  FQ�R��Q�R 0 logthis logThis� ��P� b  FM��� m  FI�� ��� 8 s h o w S i g n I n T o T V P r o v i d e r P a n e :  � o  IL�O�O 80 showsignintotvproviderpane showSignInToTVProviderPane�P  �Q  �  f  EF� ��� Z Rf���N�M� = RW��� o  RU�L�L 80 showsignintotvproviderpane showSignInToTVProviderPane� m  UV�K
�K boovfals� r  Zb��� m  Z]�� ��� $ - - s k i p - t v - p r o v i d e r� l     ��J�I� n      ���  ;  `a� o  ]`�H�H 20 setupsuppressionoptions setupSuppressionOptions�J  �I  �N  �M  � ��� l gg�G�F�E�G  �F  �E  � ��� r  gu��� l gq��D�C� c  gq��� l go��B�A� n go��� I  ho�@��?�@ 0 valueforkey_ valueForKey_� ��>� m  hk�� ��� 0 s h o w T V H o m e S c r e e n S y n c P a n e�>  �?  � o  gh�=�= ,0 parametersdictionary parametersDictionary�B  �A  � m  op�<
�< 
bool�D  �C  � o      �;�; 40 showtvhomescreensyncpane showTVHomeScreenSyncPane� ��� n v���� I  w��:��9�: 0 logthis logThis� ��8� b  w~��� m  wz�� ��� 4 s h o w T V H o m e S c r e e n S y n c P a n e :  � o  z}�7�7 40 showtvhomescreensyncpane showTVHomeScreenSyncPane�8  �9  �  f  vw� ��� Z �����6�5� = ����� o  ���4�4 40 showtvhomescreensyncpane showTVHomeScreenSyncPane� m  ���3
�3 boovfals� r  ����� m  ���� ��� 4 - - s k i p - t v - h o m e - s c r e e n - s y n c� l     ��2�1� n      ���  ;  ��� o  ���0�0 20 setupsuppressionoptions setupSuppressionOptions�2  �1  �6  �5  � ��� l ���/�.�-�/  �.  �-  � ��� r  ����� l ����,�+� c  ����� l ����*�)� n ����� I  ���(��'�( 0 valueforkey_ valueForKey_� ��&� m  ���� ���  s h o w T V R o o m P a n e�&  �'  � o  ���%�% ,0 parametersdictionary parametersDictionary�*  �)  � m  ���$
�$ 
bool�,  �+  � o      �#�#  0 showtvroompane showTVRoomPane� ��� n ����� I  ���"��!�" 0 logthis logThis� �� � b  ����� m  ���� ���   s h o w T V R o o m P a n e :  � o  ����  0 showtvroompane showTVRoomPane�   �!  �  f  ��� ��� Z ������� = ����� o  ����  0 showtvroompane showTVRoomPane� m  ���
� boovfals� r  ����� m  ���� ��� : - - s k i p - w h e r e - i s - t h i s - a p p l e - t v� l     ���� n      ���  ;  ��� o  ���� 20 setupsuppressionoptions setupSuppressionOptions�  �  �  �  � ��� l ������  �  �  � ��� r  ��   l ���� c  �� l ���� n �� I  ����� 0 valueforkey_ valueForKey_ 	�	 m  ��

 � 0 s h o w R e s t o r e C o m p l e t e d P a n e�  �   o  ���� ,0 parametersdictionary parametersDictionary�  �   m  ���
� 
bool�  �   o      �� 40 showrestorecompletedpane showRestoreCompletedPane�  n �� I  ���
�	�
 0 logthis logThis � b  �� m  �� � 4 s h o w R e s t o r e C o m p l e t e d P a n e :   o  ���� 40 showrestorecompletedpane showRestoreCompletedPane�  �	    f  ��  Z ���� = �� o  ���� 40 showrestorecompletedpane showRestoreCompletedPane m  ���
� boovfals r  �� m  �� � 0 - - s k i p - r e s t o r e - c o m p l e t e d l      ��  n      !"!  ;  ��" o  ��� �  20 setupsuppressionoptions setupSuppressionOptions�  �  �  �   #$# l ����������  ��  ��  $ %&% r  �	'(' l �	)����) c  �	*+* l �	,����, n �	-.- I  �	��/���� 0 valueforkey_ valueForKey_/ 0��0 m  ��11 �22 . s h o w U p d a t e C o m p l e t e d P a n e��  ��  . o  ������ ,0 parametersdictionary parametersDictionary��  ��  + m  		��
�� 
bool��  ��  ( o      ���� 20 showupdatecompletedpane showUpdateCompletedPane& 343 n 			565 I  	
	��7���� 0 logthis logThis7 8��8 b  	
	9:9 m  	
	;; �<< 2 s h o w U p d a t e C o m p l e t e d P a n e :  : o  		���� 20 showupdatecompletedpane showUpdateCompletedPane��  ��  6  f  			
4 =>= Z 		*?@����? = 		ABA o  		���� 20 showupdatecompletedpane showUpdateCompletedPaneB m  		��
�� boovfals@ r  		&CDC m  		!EE �FF . - - s k i p - u p d a t e - c o m p l e t e dD l     G����G n      HIH  ;  	$	%I o  	!	$���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  > JKJ l 	+	+��������  ��  ��  K LML l 	+	+��NO��  N O I Append the language and locale parameters to the end of the skipped list   O �PP �   A p p e n d   t h e   l a n g u a g e   a n d   l o c a l e   p a r a m e t e r s   t o   t h e   e n d   o f   t h e   s k i p p e d   l i s tM QRQ l 	+	+��ST��  S M G the script library will create a space-delimited string from the lists   T �UU �   t h e   s c r i p t   l i b r a r y   w i l l   c r e a t e   a   s p a c e - d e l i m i t e d   s t r i n g   f r o m   t h e   l i s t sR VWV Z  	+	lXY����X F  	+	:Z[Z l 	+	0\����\ = 	+	0]^] o  	+	.���� $0 showlanguagepane showLanguagePane^ m  	.	/��
�� boovfals��  ��  [ l 	3	8_����_ = 	3	8`a` o  	3	6���� &0 shouldsetlanguage shouldSetLanguagea m  	6	7��
�� boovtrue��  ��  Y k  	=	hbb cdc r  	=	Iefe I  	=	E��g���� R0 'derivelanguagecodematchinglanguagetitle 'deriveLanguageCodeMatchingLanguageTitleg h��h o  	>	A���� 40 languagecodedisplaytitle languageCodeDisplayTitle��  ��  f o      ���� (0 targetlanguagecode targetLanguageCoded iji n 	J	Vklk I  	K	V��m���� 0 logthis logThism n��n b  	K	Ropo m  	K	Nqq �rr ( t a r g e t L a n g u a g e C o d e :  p o  	N	Q���� (0 targetlanguagecode targetLanguageCode��  ��  l  f  	J	Kj sts r  	W	_uvu m  	W	Zww �xx  - - l a n g u a g ev l     y����y n      z{z  ;  	]	^{ o  	Z	]���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  t |��| r  	`	h}~} o  	`	c���� (0 targetlanguagecode targetLanguageCode~ l     ���� n      ���  ;  	f	g� o  	c	f���� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  ��  W ��� l 	m	m��������  ��  ��  � ��� Z  	m	�������� F  	m	|��� l 	m	r������ = 	m	r��� o  	m	p����  0 showregionpane showRegionPane� m  	p	q��
�� boovfals��  ��  � l 	u	z������ = 	u	z��� o  	u	x���� "0 shouldsetregion shouldSetRegion� m  	x	y��
�� boovtrue��  ��  � k  		��� ��� r  		���� I  		�������� J0 #derivelocalecodematchinglocaletitle #deriveLocaleCodeMatchingLocaleTitle� ���� o  	�	����� 00 localecodedisplaytitle localeCodeDisplayTitle��  ��  � o      ���� $0 targetlocalecode targetLocaleCode� ��� n 	�	���� I  	�	�������� 0 logthis logThis� ���� b  	�	���� m  	�	��� ��� $ t a r g e t L o c a l e C o d e :  � o  	�	����� $0 targetlocalecode targetLocaleCode��  ��  �  f  	�	�� ��� r  	�	���� m  	�	��� ���  - - l o c a l e� l     ������ n      ���  ;  	�	�� o  	�	����� 20 setupsuppressionoptions setupSuppressionOptions��  ��  � ���� r  	�	���� o  	�	����� $0 targetlocalecode targetLocaleCode� l     ������ n      ���  ;  	�	�� o  	�	����� 20 setupsuppressionoptions setupSuppressionOptions��  ��  ��  ��  ��  � ��� l 	�	���������  ��  ��  � ��� l  	�	�������  �   EXECUTE COMMAND    � ��� "   E X E C U T E   C O M M A N D  � ��� O  	�	���� I  	�	�������� :0 cnfgpreparespecifieddevices CNFGprepareSpecifiedDevices� ��� o  	�	����� 0 
theseecids 
theseECIDs� ��� o  	�	����� 0 shouldusemdm shouldUseMDM� ��� o  	�	����� (0 mdmcertificatepath MDMCertificatePath� ��� o  	�	����� 0 enrollmenturl enrollmentURL� ��� o  	�	����� 00 shouldsupervisedevices shouldSuperviseDevices� ��� o  	�	����� 00 allowpairingwithitunes allowPairingWithiTunes� ��� o  	�	����� 20 hostcertificatefilepath hostCertificateFilePath� ��� o  	�	����� $0 organizationname organizationName� ��� o  	�	����� *0 organizationaddress organizationAddress� ��� o  	�	����� 00 organizationdepartment organizationDepartment� ��� o  	�	����� &0 organizationphone organizationPhone� ��� o  	�	����� &0 organizationemail organizationEmail� ���� o  	�	����� 20 setupsuppressionoptions setupSuppressionOptions��  ��  � 4  	�	����
�� 
scpt� m  	�	��� ��� * C o n f i g u r a t i o n   U t i l i t y� ��� l 	�	���������  ��  ��  � ��� l  	�	�������  � ( " PASS DEVICE ECIDs TO NEXT ACTION    � ��� D   P A S S   D E V I C E   E C I D s   T O   N E X T   A C T I O N  � ��� L  	�	��� o  	�	����� 0 
theseecids 
theseECIDs� ���� l 	�	���������  ��  ��  ��   Y R      ����
�� .ascrerr ****      � ****� o      ���� (0 errormessagestring errorMessageString� �����
�� 
errn� o      ���� 0 errornumber errorNumber��   Z k  	�
�� ��� n 	�	���� I  	�	�������� 0 logthis logThis� ���� o  	�	����� (0 errormessagestring errorMessageString��  ��  �  f  	�	�� ���� Z  	�
������ > 	�	���� o  	�	����� 0 errornumber errorNumber� m  	�	������ k  	�
�� ��� r  	�
��� K  	�
�� �~��}�~ 60 nsapplescripterrormessage NSAppleScriptErrorMessage� o  	�	��|�| (0 errormessagestring errorMessageString�}  � n      ��� 1  

�{
�{ 
pcnt� o  

�z�z 0 errorref errorRef� ��y� L  

�� m  

�x
�x 
msng�y  ��  � R  

�w�v�
�w .ascrerr ****      � ****�v  � �u��t
�u 
errn� m  

�s�s���t  ��  ��   E 	 		  l     �r�q�p�r  �q  �p  	 			 l      �o		�o  	 = 7 HANDLER CALLED BEFORE ACTION VIEW APPEARS IN WORKFLOW    	 �		 n   H A N D L E R   C A L L E D   B E F O R E   A C T I O N   V I E W   A P P E A R S   I N   W O R K F L O W  	 			 i    			
		 I      �n�m�l�n 
0 opened  �m  �l  	
 k     		 			 n    			 I    �k	�j�k 0 logthis logThis	 	�i	 m    		 �		  o p e n e d ( )�i  �j  	  f     	 	�h	 I    �g�f�e�g &0 populatecodemenus populateCodeMenus�f  �e  �h  	 			 l     �d�c�b�d  �c  �b  	 			 l      �a		�a  	 \ V HANDLER CALLED TO STORE THE CURRENT SELECTIONS. CALLED WHEN WORKFLOW IS SAVED OR RUN    	 �		 �   H A N D L E R   C A L L E D   T O   S T O R E   T H E   C U R R E N T   S E L E C T I O N S .   C A L L E D   W H E N   W O R K F L O W   I S   S A V E D   O R   R U N  	 			 i     			 I      �`�_�^�` $0 updateparameters updateParameters�_  �^  	 k     2	 	  	!	"	! n    	#	$	# I    �]	%�\�] 0 logthis logThis	% 	&�[	& m    	'	' �	(	( $ u p d a t e P a r a m e t e r s ( )�[  �\  	$  f     	" 	)	*	) l   �Z	+	,�Z  	+ I C write the current value of the locale popup menu to the parameters   	, �	-	- �   w r i t e   t h e   c u r r e n t   v a l u e   o f   t h e   l o c a l e   p o p u p   m e n u   t o   t h e   p a r a m e t e r s	* 	.	/	. r    	0	1	0 n   	2	3	2 o    �Y�Y *0 titleofselecteditem titleOfSelectedItem	3 o    �X�X (0 languagespopupmenu languagesPopupMenu	1 o      �W�W ,0 currentlanguagetitle currentLanguageTitle	/ 	4	5	4 r    	6	7	6 n   	8	9	8 I    �V�U�T�V 0 
parameters  �U  �T  	9  f    	7 l     	:�S�R	: o      �Q�Q ,0 parametersdictionary parametersDictionary�S  �R  	5 	;	<	; n    	=	>	= I     �P	?�O�P $0 setvalue_forkey_ setValue_forKey_	? 	@	A	@ o    �N�N ,0 currentlanguagetitle currentLanguageTitle	A 	B�M	B m    	C	C �	D	D 0 l a n g u a g e C o d e D i s p l a y T i t l e�M  �O  	> o    �L�L ,0 parametersdictionary parametersDictionary	< 	E	F	E l  ! !�K	G	H�K  	G I C write the current value of the locale popup menu to the parameters   	H �	I	I �   w r i t e   t h e   c u r r e n t   v a l u e   o f   t h e   l o c a l e   p o p u p   m e n u   t o   t h e   p a r a m e t e r s	F 	J	K	J r   ! *	L	M	L n  ! (	N	O	N o   & (�J�J *0 titleofselecteditem titleOfSelectedItem	O o   ! &�I�I $0 localespopupmenu localesPopupMenu	M o      �H�H (0 currentlocaletitle currentLocaleTitle	K 	P�G	P n  + 2	Q	R	Q I   , 2�F	S�E�F $0 setvalue_forkey_ setValue_forKey_	S 	T	U	T o   , -�D�D (0 currentlocaletitle currentLocaleTitle	U 	V�C	V m   - .	W	W �	X	X , l o c a l e C o d e D i s p l a y T i t l e�C  �E  	R o   + ,�B�B ,0 parametersdictionary parametersDictionary�G  	 	Y	Z	Y l     �A�@�?�A  �@  �?  	Z 	[	\	[ l      �>	]	^�>  	] 1 + SAVE AN APPLESCRIPT LIST TO PROPERTY LIST    	^ �	_	_ V   S A V E   A N   A P P L E S C R I P T   L I S T   T O   P R O P E R T Y   L I S T  	\ 	`	a	` i   ! $	b	c	b I      �=	d�<�= *0 savelist_toplistat_ saveList_toPlistAt_	d 	e	f	e o      �;�; 0 thelist theList	f 	g�:	g o      �9�9 0 thepath thePath�:  �<  	c k     +	h	h 	i	j	i r     
	k	l	k n    	m	n	m I    �8	o�7�8 "0 arraywitharray_ arrayWithArray_	o 	p�6	p o    �5�5 0 thelist theList�6  �7  	n n    	q	r	q o    �4�4 0 nsarray NSArray	r m     �3
�3 misccura	l o      �2�2 0 thearray theArray	j 	s	t	s r    	u	v	u n   	w	x	w I    �1	y�0�1 &0 stringwithstring_ stringWithString_	y 	z�/	z o    �.�. 0 thepath thePath�/  �0  	x n   	{	|	{ o    �-�- 0 nsstring NSString	| m    �,
�, misccura	v o      �+�+ 0 thepath thePath	t 	}	~	} r    		�	 n   	�	�	� I    �*�)�(�* <0 stringbyexpandingtildeinpath stringByExpandingTildeInPath�)  �(  	� o    �'�' 0 thepath thePath	� o      �&�& 0 thepath thePath	~ 	�	�	� n   %	�	�	� I    %�%	��$�% 20 writetofile_atomically_ writeToFile_atomically_	� 	�	�	� o     �#�# 0 thepath thePath	� 	��"	� m     !�!
�! boovtrue�"  �$  	� o    � �  0 thearray theArray	� 	��	� l  & +	�	�	�	� I  & +�	��
� .ascrcmnt****      � ****	� 1   & '�
� 
rslt�  	�    so we can see if it saved   	� �	�	� 4   s o   w e   c a n   s e e   i f   i t   s a v e d�  	a 	�	�	� l     ����  �  �  	� 	�	�	� l      �	�	��  	� 0 * READ A PROPERTY LIST AS APPLESCRIPT LIST    	� �	�	� T   R E A D   A   P R O P E R T Y   L I S T   A S   A P P L E S C R I P T   L I S T  	� 	�	�	� i   % (	�	�	� I      �	��� 0 readplistat_ readPlistAt_	� 	��	� o      �� 0 thepath thePath�  �  	� k     "	�	� 	�	�	� r     
	�	�	� n    	�	�	� I    �	��� &0 stringwithstring_ stringWithString_	� 	��	� o    �� 0 thepath thePath�  �  	� n    	�	�	� o    �� 0 nsstring NSString	� m     �
� misccura	� o      �� 0 thepath thePath	� 	�	�	� r    	�	�	� n   	�	�	� I    ���
� <0 stringbyexpandingtildeinpath stringByExpandingTildeInPath�  �
  	� o    �	�	 0 thepath thePath	� o      �� 0 thepath thePath	� 	�	�	� r    	�	�	� n   	�	�	� I    �	��� 40 arraywithcontentsoffile_ arrayWithContentsOfFile_	� 	��	� o    �� 0 thepath thePath�  �  	� n   	�	�	� o    �� 0 nsarray NSArray	� m    �
� misccura	� o      �� 0 thearray theArray	� 	�� 	� L    "	�	� c    !	�	�	� o    ���� 0 thearray theArray	� m     ��
�� 
list�   	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� i   ) ,	�	�	� I      ��	����� 0 	getutifor 	getUTIFor	� 	���	� o      ���� 0 thispath thisPath��  ��  	� k     D	�	� 	�	�	� r     
	�	�	� n    	�	�	� I    ��	����� $0 fileurlwithpath_ fileURLWithPath_	� 	���	� o    ���� 0 thispath thisPath��  ��  	� n    	�	�	� o    ���� 	0 NSURL  	� m     ��
�� misccura	� o      ���� 0 annsurl anNSURL	� 	�	�	� r    +	�	�	� n   	�	�	� I    ��	����� @0 getresourcevalue_forkey_error_ getResourceValue_forKey_error_	� 	�	�	� l   	�����	� m    ��
�� 
obj ��  ��  	� 	�	�	� l   	�����	� n   	�	�	� o    ���� 00 nsurltypeidentifierkey NSURLTypeIdentifierKey	� m    ��
�� misccura��  ��  	� 	���	� l   	�����	� m    ��
�� 
obj ��  ��  ��  ��  	� o    ���� 0 annsurl anNSURL	� J      	�	� 	�	�	� o      ���� 0 	theresult 	theResult	� 	�	�	� o      ���� 0 theuti theUTI	� 	���	� o      ���� 0 theerror theError��  	� 	�	�	� Z  , ?	�	�����	� H   , .	�	� o   , -���� 0 	theresult 	theResult	� R   1 ;��	���
�� .ascrerr ****      � ****	� l  3 :	�����	� c   3 :	�	�	� n  3 8	�	�	� I   4 8�������� ,0 localizeddescription localizedDescription��  ��  	� o   3 4���� 0 theerror theError	� m   8 9��
�� 
ctxt��  ��  ��  ��  ��  	� 	���	� L   @ D	�	� c   @ C	�	�	� o   @ A���� 0 theuti theUTI	� m   A B��
�� 
ctxt��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� i   - 0	�	�	� I      �������� &0 populatecodemenus populateCodeMenus��  ��  	� k     �	�	� 	�	�	� l     ��	�
 ��  	� 4 . get the display titles for the language codes   
  �

 \   g e t   t h e   d i s p l a y   t i t l e s   f o r   t h e   l a n g u a g e   c o d e s	� 


 r     


 I     �������� 00 retrievelanguagetitles retrieveLanguageTitles��  ��  
 o      ���� 60 languagecodesdisplaynames languageCodesDisplayNames
 


 r    

	
 I    ��

���� &0 sortlistofstrings sortListOfStrings

 
��
 o   	 
���� 60 languagecodesdisplaynames languageCodesDisplayNames��  ��  
	 o      ���� 60 languagecodesdisplaynames languageCodesDisplayNames
 


 l   ��

��  
 2 , clear and set the values for the popup menu   
 �

 X   c l e a r   a n d   s e t   t h e   v a l u e s   f o r   t h e   p o p u p   m e n u
 


 O   


 I    ��������  0 removeallitems removeAllItems��  ��  
 o    ���� (0 languagespopupmenu languagesPopupMenu
 


 O    /


 I   ( .��
���� *0 additemswithtitles_ addItemsWithTitles_
 
��
 o   ) *���� 60 languagecodesdisplaynames languageCodesDisplayNames��  ��  
 o     %���� (0 languagespopupmenu languagesPopupMenu
 


 l  0 0��

��  
    select the stored default   
 �

 4   s e l e c t   t h e   s t o r e d   d e f a u l t
 
 
!
  r   0 7
"
#
" n  0 5
$
%
$ I   1 5�������� 0 
parameters  ��  ��  
%  f   0 1
# l     
&����
& o      ���� ,0 parametersdictionary parametersDictionary��  ��  
! 
'
(
' r   8 B
)
*
) l  8 @
+����
+ c   8 @
,
-
, l  8 >
.����
. n  8 >
/
0
/ I   9 >��
1���� 0 valueforkey_ valueForKey_
1 
2��
2 m   9 :
3
3 �
4
4 0 l a n g u a g e C o d e D i s p l a y T i t l e��  ��  
0 o   8 9���� ,0 parametersdictionary parametersDictionary��  ��  
- m   > ?��
�� 
TEXT��  ��  
* o      ���� 40 languagecodedisplaytitle languageCodeDisplayTitle
( 
5
6
5 Z   C h
7
8����
7 >  C F
9
:
9 o   C D���� 40 languagecodedisplaytitle languageCodeDisplayTitle
: m   D E
;
; �
<
<  
8 Q   I d
=
>��
= O  L [
?
@
? I   T Z��
A���� ,0 selectitemwithtitle_ selectItemWithTitle_
A 
B��
B o   U V���� 40 languagecodedisplaytitle languageCodeDisplayTitle��  ��  
@ o   L Q���� (0 languagespopupmenu languagesPopupMenu
> R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  
6 
C
D
C l  i i��������  ��  ��  
D 
E
F
E l  i i��
G
H��  
G 2 , get the display titles for the locale codes   
H �
I
I X   g e t   t h e   d i s p l a y   t i t l e s   f o r   t h e   l o c a l e   c o d e s
F 
J
K
J r   i p
L
M
L I   i n�������� ,0 retrievelocaletitles retrieveLocaleTitles��  ��  
M o      ���� 20 localecodesdisplaynames localeCodesDisplayNames
K 
N
O
N r   q y
P
Q
P I   q w��
R���� &0 sortlistofstrings sortListOfStrings
R 
S��
S o   r s���� 20 localecodesdisplaynames localeCodesDisplayNames��  ��  
Q o      ���� 20 localecodesdisplaynames localeCodesDisplayNames
O 
T
U
T l  z z��
V
W��  
V 2 , clear and set the values for the popup menu   
W �
X
X X   c l e a r   a n d   s e t   t h e   v a l u e s   f o r   t h e   p o p u p   m e n u
U 
Y
Z
Y O  z �
[
\
[ I   � ���������  0 removeallitems removeAllItems��  ��  
\ o   z ���� $0 localespopupmenu localesPopupMenu
Z 
]
^
] O  � �
_
`
_ I   � ���
a���� *0 additemswithtitles_ addItemsWithTitles_
a 
b��
b o   � ����� 20 localecodesdisplaynames localeCodesDisplayNames��  ��  
` o   � ����� $0 localespopupmenu localesPopupMenu
^ 
c
d
c l  � ���
e
f��  
e    select the stored default   
f �
g
g 4   s e l e c t   t h e   s t o r e d   d e f a u l t
d 
h
i
h r   � �
j
k
j l  � �
l��~
l c   � �
m
n
m l  � �
o�}�|
o n  � �
p
q
p I   � ��{
r�z�{ 0 valueforkey_ valueForKey_
r 
s�y
s m   � �
t
t �
u
u , l o c a l e C o d e D i s p l a y T i t l e�y  �z  
q o   � ��x�x ,0 parametersdictionary parametersDictionary�}  �|  
n m   � ��w
�w 
TEXT�  �~  
k o      �v�v 00 localecodedisplaytitle localeCodeDisplayTitle
i 
v
w
v Z   � �
x
y�u�t
x >  � �
z
{
z o   � ��s�s 00 localecodedisplaytitle localeCodeDisplayTitle
{ m   � �
|
| �
}
}  
y Q   � �
~
�r
~ O  � �
�
�
� I   � ��q
��p�q ,0 selectitemwithtitle_ selectItemWithTitle_
� 
��o
� o   � ��n�n 00 localecodedisplaytitle localeCodeDisplayTitle�o  �p  
� o   � ��m�m $0 localespopupmenu localesPopupMenu
 R      �l�k�j
�l .ascrerr ****      � ****�k  �j  �r  �u  �t  
w 
��i
� l  � ��h�g�f�h  �g  �f  �i  	� 
�
�
� l     �e�d�c�e  �d  �c  
� 
�
�
� i   1 4
�
�
� I      �b
��a�b &0 sortlistofstrings sortListOfStrings
� 
��`
� o      �_�_ 0 
sourcelist 
sourceList�`  �a  
� k     
�
� 
�
�
� l     �^
�
��^  
� 1 + sorts a passed AppleScript list of strings   
� �
�
� V   s o r t s   a   p a s s e d   A p p l e S c r i p t   l i s t   o f   s t r i n g s
� 
�
�
� l     �]
�
��]  
� < 6 create a Cocoa array from the passed AppleScript list   
� �
�
� l   c r e a t e   a   C o c o a   a r r a y   f r o m   t h e   p a s s e d   A p p l e S c r i p t   l i s t
� 
�
�
� r     

�
�
� n    
�
�
� I    �\
��[�\ "0 arraywitharray_ arrayWithArray_
� 
��Z
� o    �Y�Y 0 
sourcelist 
sourceList�Z  �[  
� n    
�
�
� o    �X�X 0 nsarray NSArray
� m     �W
�W misccura
� l     
��V�U
� o      �T�T 0 
cocoaarray 
CocoaArray�V  �U  
� 
�
�
� l   �S
�
��S  
�   sort the Cocoa array   
� �
�
� *   s o r t   t h e   C o c o a   a r r a y
� 
�
�
� r    
�
�
� n   
�
�
� I    �R
��Q�R 60 sortedarrayusingselector_ sortedArrayUsingSelector_
� 
��P
� m    
�
� �
�
� 2 l o c a l i z e d S t a n d a r d C o m p a r e :�P  �Q  
� o    �O�O 0 
cocoaarray 
CocoaArray
� l     
��N�M
� o      �L�L 0 sorteditems sortedItems�N  �M  
� 
�
�
� l   �K
�
��K  
� < 6 return the Cocoa array coerced to an AppleScript list   
� �
�
� l   r e t u r n   t h e   C o c o a   a r r a y   c o e r c e d   t o   a n   A p p l e S c r i p t   l i s t
� 
��J
� L    
�
� l   
��I�H
� c    
�
�
� o    �G�G 0 sorteditems sortedItems
� m    �F
�F 
list�I  �H  �J  
� 
�
�
� l     �E�D�C�E  �D  �C  
� 
�
�
� i   5 8
�
�
� I      �B�A�@�B .0 retrievelanguagecodes retrieveLanguageCodes�A  �@  
� k     !
�
� 
�
�
� r     
�
�
� c     
�
�
� l    	
��?�>
� n    	
�
�
� n   	
�
�
� I    	�=�<�;�= 0 resourcepath resourcePath�<  �;  
� I    �:�9�8�: 
0 bundle  �9  �8  
�  f     �?  �>  
� m   	 
�7
�7 
TEXT
� o      �6�6 (0 resourcefolderpath resourceFolderPath
� 
�
�
� r    
�
�
� b    
�
�
� b    
�
�
� o    �5�5 (0 resourcefolderpath resourceFolderPath
� m    
�
� �
�
�  /
� m    
�
� �
�
� < S u p p o r t e d   L a n g u a g e   C o d e s . p l i s t
� o      �4�4 >0 languagecodespropertylistpath languageCodesPropertyListPath
� 
�
�
� r    
�
�
� n   
�
�
� I    �3
��2�3 0 readplistat_ readPlistAt_
� 
��1
� o    �0�0 >0 languagecodespropertylistpath languageCodesPropertyListPath�1  �2  
�  g    
� o      �/�/ 0 languagecodes languageCodes
� 
��.
� L    !
�
� o     �-�- 0 languagecodes languageCodes�.  
� 
�
�
� l     �,�+�*�,  �+  �*  
� 
�
�
� i   9 <
�
�
� I      �)�(�'�) 00 retrievelanguagetitles retrieveLanguageTitles�(  �'  
� k     
�
� 
�
�
� r     
�
�
� I     �&�%�$�& .0 retrievelanguagecodes retrieveLanguageCodes�%  �$  
� o      �#�# 0 languagecodes languageCodes
� 
�
�
� r    
�
�
� I    �"
��!�" 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes
� 
�� 
� o   	 
�� 0 languagecodes languageCodes�   �!  
� o      �� 60 languagecodesdisplaynames languageCodesDisplayNames
� 
��
� L    
�
� o    �� 60 languagecodesdisplaynames languageCodesDisplayNames�  
� 
�
�
� l     ����  �  �  
� 
�
�
� i   = @
�
�
� I      ���� *0 retrievelocalecodes retrieveLocaleCodes�  �  
� k     !
�
� 
� 
� r      c      l    	�� n    	 n   		 I    	���� 0 resourcepath resourcePath�  �  	 I    ���� 
0 bundle  �  �    f     �  �   m   	 
�
� 
TEXT o      �� (0 resourcefolderpath resourceFolderPath  

 r     b     b     o    �� (0 resourcefolderpath resourceFolderPath m     �  / m     � 8 S u p p o r t e d   L o c a l e   C o d e s . p l i s t o      �
�
 :0 localecodespropertylistpath localeCodesPropertyListPath  r     n    I    �	��	 0 readplistat_ readPlistAt_ � o    �� :0 localecodespropertylistpath localeCodesPropertyListPath�  �    g     o      �� 0 localecodes localeCodes � L    ! o     �� 0 localecodes localeCodes�  
�  !  l     ��� �  �  �   ! "#" i   A D$%$ I      �������� ,0 retrievelocaletitles retrieveLocaleTitles��  ��  % k     && '(' r     )*) I     �������� *0 retrievelocalecodes retrieveLocaleCodes��  ��  * o      ���� 0 localecodes localeCodes( +,+ r    -.- I    ��/���� 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes/ 0��0 o   	 
���� 0 localecodes localeCodes��  ��  . o      ���� 20 localecodesdisplaynames localeCodesDisplayNames, 1��1 L    22 o    ���� 20 localecodesdisplaynames localeCodesDisplayNames��  # 343 l     ��������  ��  ��  4 565 i   E H787 I      ��9���� R0 'derivelanguagecodematchinglanguagetitle 'deriveLanguageCodeMatchingLanguageTitle9 :��: o      ���� &0 thislanguagetitle thisLanguageTitle��  ��  8 k     ";; <=< l     ��>?��  > e _ this routine works because the titles list is dynamically derived from the language codes list   ? �@@ �   t h i s   r o u t i n e   w o r k s   b e c a u s e   t h e   t i t l e s   l i s t   i s   d y n a m i c a l l y   d e r i v e d   f r o m   t h e   l a n g u a g e   c o d e s   l i s t= ABA r     CDC I     �������� .0 retrievelanguagecodes retrieveLanguageCodes��  ��  D o      ���� 0 languagecodes languageCodesB EFE r    GHG I    �������� 00 retrievelanguagetitles retrieveLanguageTitles��  ��  H o      ����  0 languagetitles languageTitlesF IJI r    KLK c    MNM l   O����O n   PQP I    ��R���� "0 indexof_inlist_ indexOf_inList_R STS o    ���� &0 thislanguagetitle thisLanguageTitleT U��U o    ����  0 languagetitles languageTitles��  ��  Q  g    ��  ��  N m    ��
�� 
longL o      ���� 0 	itemindex 	itemIndexJ V��V L    "WW l   !X����X n    !YZY 4     ��[
�� 
cobj[ o    ���� 0 	itemindex 	itemIndexZ o    ���� 0 languagecodes languageCodes��  ��  ��  6 \]\ l     ��������  ��  ��  ] ^_^ i   I L`a` I      ��b���� J0 #derivelocalecodematchinglocaletitle #deriveLocaleCodeMatchingLocaleTitleb c��c o      ���� "0 thislocaletitle thisLocaleTitle��  ��  a k     "dd efe l     ��gh��  g c ] this routine works because the titles list is dynamically derived from the locale codes list   h �ii �   t h i s   r o u t i n e   w o r k s   b e c a u s e   t h e   t i t l e s   l i s t   i s   d y n a m i c a l l y   d e r i v e d   f r o m   t h e   l o c a l e   c o d e s   l i s tf jkj r     lml I     �������� *0 retrievelocalecodes retrieveLocaleCodes��  ��  m o      ���� 0 localecodes localeCodesk non r    pqp I    �������� ,0 retrievelocaletitles retrieveLocaleTitles��  ��  q o      ���� 0 localetitles localeTitleso rsr r    tut c    vwv l   x����x n   yzy I    ��{���� "0 indexof_inlist_ indexOf_inList_{ |}| o    ���� "0 thislocaletitle thisLocaleTitle} ~��~ o    ���� 0 localetitles localeTitles��  ��  z  g    ��  ��  w m    ��
�� 
longu o      ���� 0 	itemindex 	itemIndexs �� L    "�� l   !������ n    !��� 4     ���
�� 
cobj� o    ���� 0 	itemindex 	itemIndex� o    ���� 0 localecodes localeCodes��  ��  ��  _ ��� l     ��������  ��  ��  � ��� l      ������  � ; 5 DERIVE THE OFFSET OF AN ITEM IN AN APPLESCRIPT LIST    � ��� j   D E R I V E   T H E   O F F S E T   O F   A N   I T E M   I N   A N   A P P L E S C R I P T   L I S T  � ��� i   M P��� I      ������� "0 indexof_inlist_ indexOf_inList_� ��� o      ���� 0 avalue aValue� ���� o      ���� 0 thelist theList��  ��  � k     %�� ��� r     
��� n    ��� I    ������� "0 arraywitharray_ arrayWithArray_� ���� o    ���� 0 thelist theList��  ��  � n    ��� o    ���� 0 nsarray NSArray� m     ��
�� misccura� o      ���� 0 thearray theArray� ��� r    ��� n   ��� I    �������  0 indexofobject_ indexOfObject_� ���� o    ���� 0 avalue aValue��  ��  � o    ���� 0 thearray theArray� o      ���� 0 theindex theIndex� ���� Z    %������ =    ��� o    ���� 0 theindex theIndex� n   ��� o    ���� 0 
nsnotfound 
NSNotFound� m    ��
�� misccura� L    �� m    ����  ��  � L   ! %�� l  ! $������ [   ! $��� o   ! "���� 0 theindex theIndex� m   " #���� ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � C = DERIVE THE DISPLAY NAMES FOR LOCALE/COUNTRY/LANGUAGES CODES    � ��� z   D E R I V E   T H E   D I S P L A Y   N A M E S   F O R   L O C A L E / C O U N T R Y / L A N G U A G E S   C O D E S  � ��� i   Q T��� I      ������� 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes� ���� o      ���� 0 
thesecodes 
theseCodes��  ��  � k     >�� ��� r     ��� J     ����  � l     ������ o      ���� ,0 displaynamesforcodes displayNamesForCodes��  ��  � ��� r    ��� n   ��� I    �������� 0 currentlocale currentLocale��  ��  � n   ��� o    ���� 0 nslocale NSLocale� m    ��
�� misccura� o      ���� 0 
thislocale 
thisLocale� ��� Y    ;�������� k    6�� ��� r    #��� n    !��� 4    !��
� 
cobj� o     �~�~ 0 i  � o    �}�} 0 
thesecodes 
theseCodes� o      �|�| 0 thiscode thisCode� ��� r   $ 1��� c   $ /��� l  $ -��{�z� n  $ -��� I   % -�y��x�y 40 displaynameforkey_value_ displayNameForKey_value_� ��� l  % (��w�v� n  % (��� o   & (�u�u (0 nslocaleidentifier NSLocaleIdentifier� m   % &�t
�t misccura�w  �v  � ��s� o   ( )�r�r 0 thiscode thisCode�s  �x  � o   $ %�q�q 0 
thislocale 
thisLocale�{  �z  � m   - .�p
�p 
TEXT� o      �o�o "0 thisdisplayname thisDisplayName� ��n� r   2 6��� o   2 3�m�m "0 thisdisplayname thisDisplayName� l     ��l�k� n      ���  ;   4 5� o   3 4�j�j ,0 displaynamesforcodes displayNamesForCodes�l  �k  �n  �� 0 i  � m    �i�i � l   ��h�g� I   �f��e
�f .corecnte****       ****� o    �d�d 0 
thesecodes 
theseCodes�e  �h  �g  ��  � ��c� L   < >�� o   < =�b�b ,0 displaynamesforcodes displayNamesForCodes�c  � ��� l     �a�`�_�a  �`  �_  � ��� i   U X��� I      �^��]�^ 0 logthis logThis� ��\� o      �[�[ 0 	itemtolog 	itemToLog�\  �]  � Z     ���Z�Y� =       o     �X�X 0 loggingstatus loggingStatus m    �W
�W boovtrue� O   
  I   �V�U
�V .ascrcmnt****      � **** l   �T�S b     m     �		 F A C T I O N :   P r e p a r e   C o n n e c t e d   D e v i c e s :   o    �R�R 0 	itemtolog 	itemToLog�T  �S  �U   m   
 �Q
�Q misccura�Z  �Y  � 

 l     �P�O�N�P  �O  �N    l     �M�M     LOCALIZATION ROUTINE    � *   L O C A L I Z A T I O N   R O U T I N E  i   Y \ I      �L�K�L 40 getlocalizedstringforkey getLocalizedStringForKey �J 1      �I
�I 
kMsg�J  �K   k       r      b     	 b      o     �H�H .0 actionidentiferstring actionIdentiferString m       �!!  - 1    �G
�G 
kMsg 1      �F
�F 
kMsg "�E" L    ## c    $%$ n   &'& l   (�D�C( n   )*) I    �B+�A�B H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_+ ,-, 1    �@
�@ 
kMsg- ./. l   0�?�>0 m    �=
�= 
msng�?  �>  / 1�<1 l   2�;�:2 m    �9
�9 
msng�;  �:  �<  �A  * I    �8�7�6�8 
0 bundle  �7  �6  �D  �C  '  f    % m    �5
�5 
utxt�E   3�43 l     �3�2�1�3  �2  �1  �4    4�04 l     �/�.�-�/  �.  �-  �0       �,56�,  5 �+�+ 60 prepare_connected_devices Prepare_Connected_Devices6 �* 78�* 60 prepare_connected_devices Prepare_Connected_Devices7 99 �)�(:
�) misccura
�( 
pcls: �;;  A M B u n d l e A c t i o n8 �'<�&�%�$�# >=>?@ABCDEFGHIJKLMN�'  < �"�!� ��������������������
�" 
pare�! 0 loggingstatus loggingStatus�  (0 languagespopupmenu languagesPopupMenu� $0 localespopupmenu localesPopupMenu� .0 actionidentiferstring actionIdentiferString� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_� 
0 opened  � $0 updateparameters updateParameters� *0 savelist_toplistat_ saveList_toPlistAt_� 0 readplistat_ readPlistAt_� 0 	getutifor 	getUTIFor� &0 populatecodemenus populateCodeMenus� &0 sortlistofstrings sortListOfStrings� .0 retrievelanguagecodes retrieveLanguageCodes� 00 retrievelanguagetitles retrieveLanguageTitles� *0 retrievelocalecodes retrieveLocaleCodes� ,0 retrievelocaletitles retrieveLocaleTitles� R0 'derivelanguagecodematchinglanguagetitle 'deriveLanguageCodeMatchingLanguageTitle� J0 #derivelocalecodematchinglocaletitle #deriveLocaleCodeMatchingLocaleTitle� "0 indexof_inlist_ indexOf_inList_� 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes� 0 logthis logThis� 40 getlocalizedstringforkey getLocalizedStringForKey�&  
�% boovtrue
�$ 
msng
�# 
msng= � G�
�	OP�� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�
 �Q� Q  ���� 	0 input  � 0 anaction anAction� 0 errorref errorRef�	  O <���� ����������������������������������������������������������������������������������������������������������������� 	0 input  � 0 anaction anAction� 0 errorref errorRef�  0 
theseecids 
theseECIDs�� ,0 parametersdictionary parametersDictionary�� 0 shouldusemdm shouldUseMDM�� 0 enrollmenturl enrollmentURL�� ,0 useanchorcertificate useAnchorCertificate�� (0 mdmcertificatepath MDMCertificatePath�� "0 thisfilemanager thisFileManager�� 0 fileexistence fileExistence�� 00 shouldsupervisedevices shouldSuperviseDevices�� 40 shouldenableshareddevice shouldEnableSharedDevice�� 00 allowpairingwithitunes allowPairingWithiTunes�� $0 organizationname organizationName�� *0 organizationaddress organizationAddress�� &0 organizationemail organizationEmail�� &0 organizationphone organizationPhone�� 00 organizationdepartment organizationDepartment�� 20 hostcertificatefilepath hostCertificateFilePath�� 20 setupsuppressionoptions setupSuppressionOptions�� $0 showlanguagepane showLanguagePane�� &0 shouldsetlanguage shouldSetLanguage�� 40 languagecodedisplaytitle languageCodeDisplayTitle��  0 showregionpane showRegionPane�� "0 shouldsetregion shouldSetRegion�� 00 localecodedisplaytitle localeCodeDisplayTitle�� $0 showsimsetuppane showSIMSetupPane�� "0 showprivacypane showPrivacyPane�� "0 showappleidpane showAppleIDPane�� $0 showapplepaypane showApplePayPane�� *0 showdiagnosticspane showDiagnosticsPane�� $0 showlocationpane showLocationPane�� $0 showpasscodepane showPasscodePane�� "0 showrestorepane showRestorePane�� *0 showdisplayzoompane showDisplayZoomPane�� $0 showappstorepane showAppStorePane�� "0 showtouchidpane showTouchIDPane�� 0 showsiripane showSiriPane�� (0 showscreentimepane showScreenTimePane�� 00 showsoftwareupdatepane showSoftwareUpdatePane�� :0 showimessageandfacetimepane showiMessageAndFaceTimePane�� $0 showtruetonepane showTrueTonePane�� 20 showmovefromandroidpane showMoveFromAndroidPane�� *0 showscreensaverpane showScreenSaverPane�� (0 showtaptosetuppane showTapToSetupPane�� >0 showphonenumberpermissionpane showPhoneNumberPermissionPane�� (0 showhomebuttonpane showHomeButtonPane�� 00 showwatchmigrationpane showWatchMigrationPane�� <0 shownewfeaturehighlightspane showNewFeatureHighlightsPane�� "0 showwelcomepane showWelcomePane�� 80 showsignintotvproviderpane showSignInToTVProviderPane�� 40 showtvhomescreensyncpane showTVHomeScreenSyncPane��  0 showtvroompane showTVRoomPane�� 40 showrestorecompletedpane showRestoreCompletedPane�� 20 showupdatecompletedpane showUpdateCompletedPane�� (0 targetlanguagecode targetLanguageCode�� $0 targetlocalecode targetLocaleCode�� (0 errormessagestring errorMessageString�� 0 errornumber errorNumberP � U���� n���� ����� � ��� � � � � �&.��������V��iq����������)3CM]g�������&0S]n���������/9CV`j}����������#-@JTnx����������
6@J]gq���������� *4GQ[nx����������
1;E��qw�������������R���������� 0 logthis logThis
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
scpt�� �� :0 cnfgpreparespecifieddevices CNFGprepareSpecifiedDevices�� (0 errormessagestring errorMessageStringR ������
�� 
errn�� 0 errornumber errorNumber��  ������ 60 nsapplescripterrormessage NSAppleScriptErrorMessage
�� 
pcnt
�� 
errn�
)�k+ O	٠�&E�O�jv  )j)�k+ Y hO)j+ E�O��k+ �&E�O)�%k+ O�e  ̤�k+ �&E�O)�%k+ O��  )j)�k+ Y hO��k+ �&E�O)a �%k+ O�e  ��a k+ �&E�O)a �%k+ O�a   )j)a k+ Y hOa a ,j+ E�O��k+ �&E�O�f  )j)a k+ Y hO)�k+ a  )j)a k+ Y hY a E�Y a E�Oa E�O�a k+ �&E�O)a �%k+ O�a  k+ �&E�O)a !�%k+ O�e &�a "k+ �&E�O)a #�%k+ O�a $k+ �&E�O)a %�%k+ O�a &k+ �&E�O)a '�%k+ O�a (k+ �&E^ O)a )] %k+ O�a *k+ �&E^ O)a +] %k+ O�a ,k+ �&E^ O)a -] %k+ O�a .k+ �&E^ O)a /] %k+ O] a 0  )j)a 1k+ Y hOa a ,j+ E�O�] k+ �&E�O�f  )j)a 2k+ Y hO)] k+ a 3 )j)a 4k+ Y hY 3a E�Oa E^ Oa E�Oa E�Oa E^ Oa E^ Oa E^ OjvE^ O�a 5k+ �&E^ O)a 6] %k+ O] f  a 7] 6FY hOfE^ O] f  ;�a 8k+ �&E^ O)a 9] %k+ O] e  �a :k+ �&E^ Y hY hO�a ;k+ �&E^ O)a <] %k+ O] f  a =] 6FY hO] f  ;�a >k+ �&E^ O)a ?] %k+ O] e  �a @k+ �&E^ Y hY hO�a Ak+ �&E^ O)a B] %k+ O] f  a C] 6FY hO�a Dk+ �&E^ O)a E] %k+ O] f  a F] 6FY hO�a Gk+ �&E^ O)a H] %k+ O] f  a I] 6FY hO�a Jk+ �&E^ O)a K] %k+ O] f  a L] 6FY hO�a Mk+ �&E^ O)a N] %k+ O] f  a O] 6FY hO�a Pk+ �&E^  O)a Q]  %k+ O]  f  a R] 6FY hO�a Sk+ �&E^ !O)a T] !%k+ O] !f  a U] 6FY hO�a Vk+ �&E^ "O)a W] "%k+ O] "f  a X] 6FY hO�a Yk+ �&E^ #O)a Z] #%k+ O] #f  a [] 6FY hO�a \k+ �&E^ $O)a ]] $%k+ O] $f  a ^] 6FY hO�a _k+ �&E^ %O)a `] %%k+ O] %f  a a] 6FY hO�a bk+ �&E^ &O)a c] &%k+ O] &f  a d] 6FY hO�a ek+ �&E^ 'O)a f] '%k+ O] 'f  a g] 6FY hO�a hk+ �&E^ (O)a i] (%k+ O] (f  a j] 6FY hO�a kk+ �&E^ )O)a l] )%k+ O] )f  a m] 6FY hO�a nk+ �&E^ *O)a o] *%k+ O] *f  a p] 6FY hO�a qk+ �&E^ +O)a r] +%k+ O] +f  a s] 6FY hO�a tk+ �&E^ ,O)a u] ,%k+ O] ,f  a v] 6FY hO�a wk+ �&E^ -O)a x] -%k+ O] -f  a y] 6FY hO�a zk+ �&E^ .O)a {] .%k+ O] .f  a |] 6FY hO�a }k+ �&E^ /O)a ~] /%k+ O] /f  a ] 6FY hO�a �k+ �&E^ 0O)a �] 0%k+ O] 0f  a �] 6FY hO�a �k+ �&E^ 1O)a �] 1%k+ O] 1f  a �] 6FY hO�a �k+ �&E^ 2O)a �] 2%k+ O] 2f  a �] 6FY hO�a �k+ �&E^ 3O)a �] 3%k+ O] 3f  a �] 6FY hO�a �k+ �&E^ 4O)a �] 4%k+ O] 4f  a �] 6FY hO�a �k+ �&E^ 5O)a �] 5%k+ O] 5f  a �] 6FY hO�a �k+ �&E^ 6O)a �] 6%k+ O] 6f  a �] 6FY hO�a �k+ �&E^ 7O)a �] 7%k+ O] 7f  a �] 6FY hO] f 	 	] e �& 0*] k+ �E^ 8O)a �] 8%k+ Oa �] 6FO] 8] 6FY hO] f 	 	] e �& 0*] k+ �E^ 9O)a �] 9%k+ Oa �] 6FO] 9] 6FY hO)a �a �/  *������] ��] ] ] ] a �+ �UO�OPW :X � �)] :k+ O] ;a � a �] :l�a �,FOa Y )a �a �lh> ��	
����ST���� 
0 opened  ��  ��  S  T 	������ 0 logthis logThis�� &0 populatecodemenus populateCodeMenus�� )�k+ O*j+ ? ��	����UV���� $0 updateparameters updateParameters��  ��  U �������� ,0 currentlanguagetitle currentLanguageTitle�� ,0 parametersdictionary parametersDictionary�� (0 currentlocaletitle currentLocaleTitleV 	'������	C��	W�� 0 logthis logThis�� *0 titleofselecteditem titleOfSelectedItem�� 0 
parameters  �� $0 setvalue_forkey_ setValue_forKey_�� 3)�k+ Ob  �,E�O)j+ E�O���l+ Ob  �,E�O���l+ @ ��	c����WX���� *0 savelist_toplistat_ saveList_toPlistAt_�� ��Y�� Y  ������ 0 thelist theList�� 0 thepath thePath��  W �������� 0 thelist theList�� 0 thepath thePath�� 0 thearray theArrayX 	������������������
�� misccura�� 0 nsarray NSArray�� "0 arraywitharray_ arrayWithArray_�� 0 nsstring NSString�� &0 stringwithstring_ stringWithString_�� <0 stringbyexpandingtildeinpath stringByExpandingTildeInPath�� 20 writetofile_atomically_ writeToFile_atomically_
�� 
rslt
�� .ascrcmnt****      � ****�� ,��,�k+ E�O��,�k+ E�O�j+ E�O��el+ O�j A ��	�����Z[���� 0 readplistat_ readPlistAt_�� ��\�� \  ���� 0 thepath thePath��  Z ������ 0 thepath thePath�� 0 thearray theArray[ ������~�}�|�{
�� misccura�� 0 nsstring NSString� &0 stringwithstring_ stringWithString_�~ <0 stringbyexpandingtildeinpath stringByExpandingTildeInPath�} 0 nsarray NSArray�| 40 arraywithcontentsoffile_ arrayWithContentsOfFile_
�{ 
list�� #��,�k+ E�O�j+ E�O��,�k+ E�O��&B �z	��y�x]^�w�z 0 	getutifor 	getUTIFor�y �v_�v _  �u�u 0 thispath thisPath�x  ] �t�s�r�q�p�t 0 thispath thisPath�s 0 annsurl anNSURL�r 0 	theresult 	theResult�q 0 theuti theUTI�p 0 theerror theError^ 	�o�n�m�l�k�j�i�h�g
�o misccura�n 	0 NSURL  �m $0 fileurlwithpath_ fileURLWithPath_
�l 
obj �k 00 nsurltypeidentifierkey NSURLTypeIdentifierKey�j @0 getresourcevalue_forkey_error_ getResourceValue_forKey_error_
�i 
cobj�h ,0 localizeddescription localizedDescription
�g 
ctxt�w E��,�k+ E�O����,�m+ E[�k/E�Z[�l/E�Z[�m/E�ZO� )j�j+ �&Y hO��&C �f	��e�d`a�c�f &0 populatecodemenus populateCodeMenus�e  �d  ` �b�a�`�_�^�b 60 languagecodesdisplaynames languageCodesDisplayNames�a ,0 parametersdictionary parametersDictionary�` 40 languagecodedisplaytitle languageCodeDisplayTitle�_ 20 localecodesdisplaynames localeCodesDisplayNames�^ 00 localecodedisplaytitle localeCodeDisplayTitlea �]�\�[�Z�Y
3�X�W
;�V�U�T�S
t
|�] 00 retrievelanguagetitles retrieveLanguageTitles�\ &0 sortlistofstrings sortListOfStrings�[  0 removeallitems removeAllItems�Z *0 additemswithtitles_ addItemsWithTitles_�Y 0 
parameters  �X 0 valueforkey_ valueForKey_
�W 
TEXT�V ,0 selectitemwithtitle_ selectItemWithTitle_�U  �T  �S ,0 retrievelocaletitles retrieveLocaleTitles�c �*j+  E�O*�k+ E�Ob   *j+ UOb   *�k+ UO)j+ E�O��k+ �&E�O��   b   *�k+ 	UW X 
 hY hO*j+ E�O*�k+ E�Ob   *j+ UOb   *�k+ UO��k+ �&E�O��   b   *�k+ 	UW X 
 hY hOPD �R
��Q�Pbc�O�R &0 sortlistofstrings sortListOfStrings�Q �Nd�N d  �M�M 0 
sourcelist 
sourceList�P  b �L�K�J�L 0 
sourcelist 
sourceList�K 0 
cocoaarray 
CocoaArray�J 0 sorteditems sortedItemsc �I�H�G
��F�E
�I misccura�H 0 nsarray NSArray�G "0 arraywitharray_ arrayWithArray_�F 60 sortedarrayusingselector_ sortedArrayUsingSelector_
�E 
list�O ��,�k+ E�O��k+ E�O��&E �D
��C�Bef�A�D .0 retrievelanguagecodes retrieveLanguageCodes�C  �B  e �@�?�>�@ (0 resourcefolderpath resourceFolderPath�? >0 languagecodespropertylistpath languageCodesPropertyListPath�> 0 languagecodes languageCodesf �=�<�;
�
��:�= 
0 bundle  �< 0 resourcepath resourcePath
�; 
TEXT�: 0 readplistat_ readPlistAt_�A ")j+  j+ �&E�O��%�%E�O*�k+ E�O�F �9
��8�7gh�6�9 00 retrievelanguagetitles retrieveLanguageTitles�8  �7  g �5�4�5 0 languagecodes languageCodes�4 60 languagecodesdisplaynames languageCodesDisplayNamesh �3�2�3 .0 retrievelanguagecodes retrieveLanguageCodes�2 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes�6 *j+  E�O*�k+ E�O�G �1
��0�/ij�.�1 *0 retrievelocalecodes retrieveLocaleCodes�0  �/  i �-�,�+�- (0 resourcefolderpath resourceFolderPath�, :0 localecodespropertylistpath localeCodesPropertyListPath�+ 0 localecodes localeCodesj �*�)�(�'�* 
0 bundle  �) 0 resourcepath resourcePath
�( 
TEXT�' 0 readplistat_ readPlistAt_�. ")j+  j+ �&E�O��%�%E�O*�k+ E�O�H �&%�%�$kl�#�& ,0 retrievelocaletitles retrieveLocaleTitles�%  �$  k �"�!�" 0 localecodes localeCodes�! 20 localecodesdisplaynames localeCodesDisplayNamesl � ��  *0 retrievelocalecodes retrieveLocaleCodes� 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes�# *j+  E�O*�k+ E�O�I �8��mn�� R0 'derivelanguagecodematchinglanguagetitle 'deriveLanguageCodeMatchingLanguageTitle� �o� o  �� &0 thislanguagetitle thisLanguageTitle�  m ����� &0 thislanguagetitle thisLanguageTitle� 0 languagecodes languageCodes�  0 languagetitles languageTitles� 0 	itemindex 	itemIndexn ������ .0 retrievelanguagecodes retrieveLanguageCodes� 00 retrievelanguagetitles retrieveLanguageTitles� "0 indexof_inlist_ indexOf_inList_
� 
long
� 
cobj� #*j+  E�O*j+ E�O*��l+ �&E�O��/EJ �a��pq�� J0 #derivelocalecodematchinglocaletitle #deriveLocaleCodeMatchingLocaleTitle� �r� r  �
�
 "0 thislocaletitle thisLocaleTitle�  p �	����	 "0 thislocaletitle thisLocaleTitle� 0 localecodes localeCodes� 0 localetitles localeTitles� 0 	itemindex 	itemIndexq ������ *0 retrievelocalecodes retrieveLocaleCodes� ,0 retrievelocaletitles retrieveLocaleTitles� "0 indexof_inlist_ indexOf_inList_
� 
long
� 
cobj� #*j+  E�O*j+ E�O*��l+ �&E�O��/EK � �����st���  "0 indexof_inlist_ indexOf_inList_�� ��u�� u  ������ 0 avalue aValue�� 0 thelist theList��  s ���������� 0 avalue aValue�� 0 thelist theList�� 0 thearray theArray�� 0 theindex theIndext ����������
�� misccura�� 0 nsarray NSArray�� "0 arraywitharray_ arrayWithArray_��  0 indexofobject_ indexOfObject_�� 0 
nsnotfound 
NSNotFound�� &��,�k+ E�O��k+ E�O���,  jY �kL �������vw���� 80 derivedisplaynamesforcodes deriveDisplayNamesForCodes�� ��x�� x  ���� 0 
thesecodes 
theseCodes��  v �������������� 0 
thesecodes 
theseCodes�� ,0 displaynamesforcodes displayNamesForCodes�� 0 
thislocale 
thisLocale�� 0 i  �� 0 thiscode thisCode�� "0 thisdisplayname thisDisplayNamew ����������������
�� misccura�� 0 nslocale NSLocale�� 0 currentlocale currentLocale
�� .corecnte****       ****
�� 
cobj�� (0 nslocaleidentifier NSLocaleIdentifier�� 40 displaynameforkey_value_ displayNameForKey_value_
�� 
TEXT�� ?jvE�O��,j+ E�O +k�j kh ��/E�O���,�l+ �&E�O��6F[OY��O�M �������yz���� 0 logthis logThis�� ��{�� {  ���� 0 	itemtolog 	itemToLog��  y ���� 0 	itemtolog 	itemToLogz ����
�� misccura
�� .ascrcmnt****      � ****�� b  e  � 	�%j UY hN ������|}���� 40 getlocalizedstringforkey getLocalizedStringForKey�� ��~�� ~  ��
�� 
kMsg��  | ��
�� 
kMsg}  ���������� 
0 bundle  
�� 
msng�� H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_
�� 
utxt�� b  �%�%E�O)j+ ���m+ �&ascr  ��ޭ