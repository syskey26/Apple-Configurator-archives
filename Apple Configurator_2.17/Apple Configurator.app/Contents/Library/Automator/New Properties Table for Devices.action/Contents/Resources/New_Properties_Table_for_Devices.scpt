FasdUAS 1.101.10   ��   ��    k             l     ��  ��    4 .  New_Properties_Table_for_Devices.applescript     � 	 	 \     N e w _ P r o p e r t i e s _ T a b l e _ f o r _ D e v i c e s . a p p l e s c r i p t   
  
 l     ��  ��    ( "  New Properties Table for Devices     �   D     N e w   P r o p e r t i e s   T a b l e   f o r   D e v i c e s      l     ��������  ��  ��        l     ��  ��    + %  Created by Sal Soghoian on 1/20/15.     �   J     C r e a t e d   b y   S a l   S o g h o i a n   o n   1 / 2 0 / 1 5 .      l     ��  ��    = 7  Copyright � 2015-2023 Apple Inc. All rights reserved.     �   n     C o p y r i g h t   �   2 0 1 5 - 2 0 2 3   A p p l e   I n c .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        h     �� �� D0  new_properties_table_for_devices  New_Properties_Table_for_Devices  k            ! " ! j     �� #
�� 
pare # 4     �� $
�� 
pcls $ m     % % � & &  A M B u n d l e A c t i o n "  ' ( ' j   	 �� )�� 0 loggingstatus loggingStatus ) m   	 
��
�� boovtrue (  * + * l     ��������  ��  ��   +  , - , j    �� .�� .0 actionidentiferstring actionIdentiferString . m     / / � 0 0  C N F G A C T - 0 6 -  1 2 1 l     ��������  ��  ��   2  3 4 3 j    x�� 5�� ,0 bindingpropertynames bindingPropertyNames 5 J    w 6 6  7 8 7 m     9 9 � : : $ u s e A c t i v a t i o n S t a t e 8  ; < ; m     = = � > >   u s e A l l o w s P a i r i n g <  ? @ ? m     A A � B B 0 u s e B a c k u p W i l l B e E n c r y p t e d @  C D C m     E E � F F 2 u s e B a t t e r y C u r r e n t C a p a c i t y D  G H G m     I I � J J ( u s e B a t t e r y I s C h a r g i n g H  K L K m     M M � N N & u s e B l u e t o o t h A d d r e s s L  O P O m     Q Q � R R  u s e B o o t e d S t a t e P  S T S m     U U � V V  u s e B u i l d V e r s i o n T  W X W m     Y Y � Z Z 2 u s e C l o u d B a c k u p s A r e E n a b l e d X  [ \ [ m     ] ] � ^ ^  u s e C o l o r \  _ ` _ m     a a � b b 0 u s e C o n f i g u r a t i o n P r o f i l e s `  c d c m     e e � f f  u s e D e v i c e C l a s s d  g h g m    " i i � j j  u s e D e v i c e T y p e h  k l k m   " % m m � n n  u s e E C I D l  o p o m   % ( q q � r r " u s e E n c l o s u r e C o l o r p  s t s m   ( + u u � v v $ u s e F i r m w a r e V e r s i o n t  w x w m   + . y y � z z 2 u s e H a s T e l e p h o n y C a p a b i l i t y x  { | { m   . 1 } } � ~ ~  u s e I C C I D |   �  m   1 4 � � � � �  u s e I M E I �  � � � m   4 7 � � � � �  u s e L a n g u a g e �  � � � m   7 : � � � � �  u s e L o c a l e �  � � � m   : = � � � � �  u s e L o c a t i o n I D �  � � � m   = @ � � � � �  u s e N a m e �  � � � m   @ C � � � � � , u s e O r g a n i z a t i o n A d d r e s s �  � � � m   C F � � � � � 2 u s e O r g a n i z a t i o n D e p a r t m e n t �  � � � m   F I � � � � � ( u s e O r g a n i z a t i o n E m a i l �  � � � m   I L � � � � � & u s e O r g a n i z a t i o n N a m e �  � � � m   L O � � � � � ( u s e O r g a n i z a t i o n P h o n e �  � � � m   O R � � � � �  u s e P a i r e d �  � � � m   R U � � � � � ( u s e P a s s c o d e P r o t e c t e d �  � � � m   U X � � � � �  u s e P h o n e N u m b e r �  � � � m   X [ � � � � � . u s e P r o v i s i o n i n g P r o f i l e s �  � � � m   [ ^ � � � � �  u s e S e r i a l N u m b e r �  � � � m   ^ a � � � � �  u s e S u p e r v i s e d �  � � � m   a d � � � � � 6 u s e S u p p l e m e n t a l B u i l d V e r s i o n �  � � � m   d g � � � � � : u s e S u p p l e m e n t a l P r o d u c t V e r s i o n �  � � � m   g j � � � � �  u s e T a g s �  � � � m   j m � � � � � ( u s e T o t a l D i s k C a p a c i t y �  � � � m   m p � � � � �  u s e U D I D �  ��� � m   p s � � � � �  u s e W i f i A d d r e s s��   4  � � � l     ��������  ��  ��   �  � � � i   y | � � � I      �� ����� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_ �  � � � o      ���� 	0 input   �  � � � o      ���� 0 anaction anAction �  ��� � o      ���� 0 errorref errorRef��  ��   � k    
l � �  � � � n     � � � I    �� ����� 0 logthis logThis �  ��� � m     � � � � �  r u n W i t h I n p u t ( & )��  ��   �  f      �  ��� � Q   
l � � � � k   

( � �  � � � r   
  � � � c   
  � � � o   
 ���� 	0 input   � m    ��
�� 
list � o      ���� 0 
theseecids 
theseECIDs �  � � � Z    $ � ����� � =    � � � o    ���� 0 
theseecids 
theseECIDs � J    ����   � R     �� ���
�� .ascrerr ****      � **** � l    ����� � n    � � � I    �� ���� &0 nslocalizedstring NSLocalizedString  �� m     �  N O _ I N P U T _ E R R O R��  ��   �  f    ��  ��  ��  ��  ��   �  l  % %��������  ��  ��    l  % %��	��   7 1 STORE THE ACTION PARAMETERS RECORD IN A VARIABLE   	 �

 b   S T O R E   T H E   A C T I O N   P A R A M E T E R S   R E C O R D   I N   A   V A R I A B L E  r   % , n  % * I   & *�������� 0 
parameters  ��  ��    f   % & l     ���� o      ���� ,0 parametersdictionary parametersDictionary��  ��    l  - -��������  ��  ��    l  - -����   ' ! EXTRACT CURRENT PARAMETER VALUES    � B   E X T R A C T   C U R R E N T   P A R A M E T E R   V A L U E S  r   - 7 l  - 5���� c   - 5 l  - 3 ����  n  - 3!"! I   . 3��#���� 0 valueforkey_ valueForKey_# $��$ m   . /%% �&& . s h o u l d C r e a t e N e w D o c u m e n t��  ��  " o   - .���� ,0 parametersdictionary parametersDictionary��  ��   m   3 4��
�� 
bool��  ��   o      ���� 20 shouldcreatenewdocument shouldCreateNewDocument '(' n  8 @)*) I   9 @��+���� 0 logthis logThis+ ,��, b   9 <-.- m   9 :// �00 2 s h o u l d C r e a t e N e w D o c u m e n t :  . o   : ;���� 20 shouldcreatenewdocument shouldCreateNewDocument��  ��  *  f   8 9( 121 l  A A��������  ��  ��  2 343 r   A K565 l  A I7����7 c   A I898 l  A G:����: n  A G;<; I   B G��=���� 0 valueforkey_ valueForKey_= >��> m   B C?? �@@  t a b l e T i t l e��  ��  < o   A B���� ,0 parametersdictionary parametersDictionary��  ��  9 m   G H��
�� 
ctxt��  ��  6 o      ���� 0 
tabletitle 
tableTitle4 ABA n  L TCDC I   M T��E���� 0 logthis logThisE F��F b   M PGHG m   M NII �JJ  t a b l e T i t l e :  H o   N O���� 0 
tabletitle 
tableTitle��  ��  D  f   L MB KLK Z   U pMN����M =  U XOPO o   U V���� 0 
tabletitle 
tableTitleP m   V WQQ �RR  N k   [ lSS TUT r   [ cVWV l  [ aX����X n  [ aYZY I   \ a��[���� &0 nslocalizedstring NSLocalizedString[ \��\ m   \ ]]] �^^ & D E F A U L T _ T A B L E _ T I T L E��  ��  Z  f   [ \��  ��  W o      ���� 0 
tabletitle 
tableTitleU _��_ n  d l`a` I   e l��b���� 0 logthis logThisb c��c b   e hded m   e fff �gg  t a b l e T i t l e :  e o   f g���� 0 
tabletitle 
tableTitle��  ��  a  f   d e��  ��  ��  L hih l  q q��������  ��  ��  i jkj r   q ulml J   q s����  m o      ���� ,0 propertiestoretrieve propertiesToRetrievek non l  v v��������  ��  ��  o pqp r   v �rsr c   v �tut l  v ~v����v n  v ~wxw I   w ~��y���� 0 valueforkey_ valueForKey_y z��z m   w z{{ �|| 2 u s e H a s T e l e p h o n y C a p a b i l i t y��  ��  x o   v w���� ,0 parametersdictionary parametersDictionary��  ��  u m   ~ ��
�� 
bools o      ���� 60 usehastelephonycapability useHasTelephonyCapabilityq }~} n  � �� I   � ������� 0 logthis logThis� ��~� b   � ���� m   � ��� ��� 6 u s e H a s T e l e p h o n y C a p a b i l i t y :  � o   � ��}�} 60 usehastelephonycapability useHasTelephonyCapability�~  �  �  f   � �~ ��� Z  � ����|�{� =  � ���� o   � ��z�z 60 usehastelephonycapability useHasTelephonyCapability� m   � ��y
�y boovtrue� r   � ���� m   � ��� ��� , h a s T e l e p h o n y C a p a b i l i t y� l     ��x�w� n      ���  ;   � �� l  � ���v�u� o   � ��t�t ,0 propertiestoretrieve propertiesToRetrieve�v  �u  �x  �w  �|  �{  � ��� l  � ��s�r�q�s  �r  �q  � ��� r   � ���� l  � ���p�o� c   � ���� l  � ���n�m� n  � ���� I   � ��l��k�l 0 valueforkey_ valueForKey_� ��j� m   � ��� ��� $ u s e A c t i v a t i o n S t a t e�j  �k  � o   � ��i�i ,0 parametersdictionary parametersDictionary�n  �m  � m   � ��h
�h 
bool�p  �o  � o      �g�g (0 useactivationstate useActivationState� ��� n  � ���� I   � ��f��e�f 0 logthis logThis� ��d� b   � ���� m   � ��� ��� ( u s e A c t i v a t i o n S t a t e :  � o   � ��c�c (0 useactivationstate useActivationState�d  �e  �  f   � �� ��� Z  � ����b�a� =  � ���� o   � ��`�` (0 useactivationstate useActivationState� m   � ��_
�_ boovtrue� r   � ���� m   � ��� ���  a c t i v a t i o n S t a t e� l     ��^�]� n      ���  ;   � �� l  � ���\�[� o   � ��Z�Z ,0 propertiestoretrieve propertiesToRetrieve�\  �[  �^  �]  �b  �a  � ��� l  � ��Y�X�W�Y  �X  �W  � ��� r   � ���� l  � ���V�U� c   � ���� l  � ���T�S� n  � ���� I   � ��R��Q�R 0 valueforkey_ valueForKey_� ��P� m   � ��� ���   u s e A l l o w s P a i r i n g�P  �Q  � o   � ��O�O ,0 parametersdictionary parametersDictionary�T  �S  � m   � ��N
�N 
bool�V  �U  � o      �M�M $0 useallowspairing useAllowsPairing� ��� n  � ���� I   � ��L��K�L 0 logthis logThis� ��J� b   � ���� m   � ��� ��� $ u s e A l l o w s P a i r i n g :  � o   � ��I�I $0 useallowspairing useAllowsPairing�J  �K  �  f   � �� ��� Z  � ����H�G� =  � ���� o   � ��F�F $0 useallowspairing useAllowsPairing� m   � ��E
�E boovtrue� r   � ���� m   � ��� ���  p a i r i n g A l l o w e d� l     ��D�C� n      ���  ;   � �� l  � ���B�A� o   � ��@�@ ,0 propertiestoretrieve propertiesToRetrieve�B  �A  �D  �C  �H  �G  � ��� l  � ��?�>�=�?  �>  �=  � ��� r   � ���� l  � ���<�;� c   � ���� l  � ���:�9� n  � ���� I   � ��8��7�8 0 valueforkey_ valueForKey_� ��6� m   � ��� ��� 0 u s e B a c k u p W i l l B e E n c r y p t e d�6  �7  � o   � ��5�5 ,0 parametersdictionary parametersDictionary�:  �9  � m   � ��4
�4 
bool�<  �;  � o      �3�3 40 usebackupwillbeencrypted useBackupWillBeEncrypted� ��� n  ���� I   ��2��1�2 0 logthis logThis� ��0� b   ���� m   ��� ��� 4 u s e B a c k u p W i l l B e E n c r y p t e d :  � o  �/�/ 40 usebackupwillbeencrypted useBackupWillBeEncrypted�0  �1  �  f   � �� � � Z 	�.�- = 	 o  	
�,�, 40 usebackupwillbeencrypted useBackupWillBeEncrypted m  
�+
�+ boovtrue r   m   � * b a c k u p W i l l B e E n c r y p t e d l     	�*�)	 n      

  ;   l �(�' o  �&�& ,0 propertiestoretrieve propertiesToRetrieve�(  �'  �*  �)  �.  �-     l �%�$�#�%  �$  �#    r  & l $�"�! c  $ l "� � n " I  "��� 0 valueforkey_ valueForKey_ � m   � 2 u s e B a t t e r y C u r r e n t C a p a c i t y�  �   o  �� ,0 parametersdictionary parametersDictionary�   �   m  "#�
� 
bool�"  �!   o      �� 60 usebatterycurrentcapacity useBatteryCurrentCapacity  n '1  I  (1�!�� 0 logthis logThis! "�" b  (-#$# m  (+%% �&& 6 u s e B a t t e r y C u r r e n t C a p a c i t y :  $ o  +,�� 60 usebatterycurrentcapacity useBatteryCurrentCapacity�  �     f  '( '(' Z 2B)*��) = 25+,+ o  23�� 60 usebatterycurrentcapacity useBatteryCurrentCapacity, m  34�
� boovtrue* r  8>-.- m  8;// �00 , b a t t e r y C u r r e n t C a p a c i t y. l     1��1 n      232  ;  <=3 l ;<4��4 o  ;<�� ,0 propertiestoretrieve propertiesToRetrieve�  �  �  �  �  �  ( 565 l CC��
�	�  �
  �	  6 787 r  CO9:9 l CM;��; c  CM<=< l CK>��> n CK?@? I  DK�A�� 0 valueforkey_ valueForKey_A B�B m  DGCC �DD ( u s e B a t t e r y I s C h a r g i n g�  �  @ o  CD�� ,0 parametersdictionary parametersDictionary�  �  = m  KL� 
�  
bool�  �  : o      ���� ,0 usebatteryischarging useBatteryIsCharging8 EFE n PZGHG I  QZ��I���� 0 logthis logThisI J��J b  QVKLK m  QTMM �NN , u s e B a t t e r y I s C h a r g i n g :  L o  TU���� ,0 usebatteryischarging useBatteryIsCharging��  ��  H  f  PQF OPO Z [kQR����Q = [^STS o  [\���� ,0 usebatteryischarging useBatteryIsChargingT m  \]��
�� boovtrueR r  agUVU m  adWW �XX " b a t t e r y I s C h a r g i n gV l     Y����Y n      Z[Z  ;  ef[ l de\����\ o  de���� ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��  P ]^] l ll��������  ��  ��  ^ _`_ r  lxaba l lvc����c c  lvded l ltf����f n ltghg I  mt��i���� 0 valueforkey_ valueForKey_i j��j m  mpkk �ll & u s e B l u e t o o t h A d d r e s s��  ��  h o  lm���� ,0 parametersdictionary parametersDictionary��  ��  e m  tu��
�� 
bool��  ��  b o      ���� *0 usebluetoothaddress useBluetoothAddress` mnm n y�opo I  z���q���� 0 logthis logThisq r��r b  zsts m  z}uu �vv * u s e B l u e t o o t h A d d r e s s :  t o  }~���� *0 usebluetoothaddress useBluetoothAddress��  ��  p  f  yzn wxw Z ��yz����y = ��{|{ o  ������ *0 usebluetoothaddress useBluetoothAddress| m  ����
�� boovtruez r  ��}~} m  �� ���   b l u e t o o t h A d d r e s s~ l     ������ n      ���  ;  ��� l �������� o  ������ ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��  x ��� l ����������  ��  ��  � ��� r  ����� l �������� c  ����� l �������� n ����� I  ��������� 0 valueforkey_ valueForKey_� ���� m  ���� ���  u s e B o o t e d S t a t e��  ��  � o  ������ ,0 parametersdictionary parametersDictionary��  ��  � m  ����
�� 
bool��  ��  � o      ����  0 usebootedstate useBootedState� ��� n ����� I  ��������� 0 logthis logThis� ���� b  ����� m  ���� ���   u s e B o o t e d S t a t e :  � o  ������  0 usebootedstate useBootedState��  ��  �  f  ��� ��� Z ��������� = ����� o  ������  0 usebootedstate useBootedState� m  ����
�� boovtrue� r  ����� m  ���� ���  b o o t e d S t a t e� l     ������ n      ���  ;  ��� l �������� o  ������ ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� r  ����� l �������� c  ����� l �������� n ����� I  ��������� 0 valueforkey_ valueForKey_� ���� m  ���� ���  u s e B u i l d V e r s i o n��  ��  � o  ������ ,0 parametersdictionary parametersDictionary��  ��  � m  ����
�� 
bool��  ��  � o      ���� "0 usebuildversion useBuildVersion� ��� n ����� I  ��������� 0 logthis logThis� ���� b  ����� m  ���� ��� " u s e B u i l d V e r s i o n :  � o  ������ "0 usebuildversion useBuildVersion��  ��  �  f  ��� ��� Z ��������� = ����� o  ������ "0 usebuildversion useBuildVersion� m  ����
�� boovtrue� r  ����� m  ���� ���  b u i l d V e r s i o n� l     ������ n      ���  ;  ��� l �������� o  ������ ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� r  ����� l �������� c  ����� l �������� n ����� I  ��������� 0 valueforkey_ valueForKey_� ���� m  ���� ��� 2 u s e C l o u d B a c k u p s A r e E n a b l e d��  ��  � o  ������ ,0 parametersdictionary parametersDictionary��  ��  � m  ����
�� 
bool��  ��  � o      ���� 60 usecloudbackupsareenabled useCloudBackupsAreEnabled� ��� n ���� I  �������� 0 logthis logThis� ���� b  ���� m  � �� ��� 6 u s e C l o u d B a c k u p s A r e E n a b l e d :  � o   ���� 60 usecloudbackupsareenabled useCloudBackupsAreEnabled��  ��  �  f  ��� ��� Z 	������� = 	��� o  	���� 60 usecloudbackupsareenabled useCloudBackupsAreEnabled� m  ��
�� boovtrue� r  ��� m  �� ��� , c l o u d B a c k u p s A r e E n a b l e d� l     ������ n      ���  ;  � l ������ o  ���� ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��  � ��� l ��������  ��  ��  � � � r  * l &���� c  & l $���� n $ I  $��	���� 0 valueforkey_ valueForKey_	 
��
 m    �  u s e C o l o r��  ��   o  �� ,0 parametersdictionary parametersDictionary��  ��   m  $%�~
�~ 
bool��  ��   o      �}�} 0 usecolor useColor   n +7 I  ,7�|�{�| 0 logthis logThis �z b  ,3 m  ,/ �  u s e C o l o r :   o  /2�y�y 0 usecolor useColor�z  �{    f  +,  Z 8J�x�w = 8= o  8;�v�v 0 usecolor useColor m  ;<�u
�u boovtrue r  @F m  @C �   
 c o l o r l     !�t�s! n      "#"  ;  DE# l CD$�r�q$ o  CD�p�p ,0 propertiestoretrieve propertiesToRetrieve�r  �q  �t  �s  �x  �w   %&% l KK�o�n�m�o  �n  �m  & '(' r  KY)*) l KU+�l�k+ c  KU,-, l KS.�j�i. n KS/0/ I  LS�h1�g�h 0 valueforkey_ valueForKey_1 2�f2 m  LO33 �44 0 u s e C o n f i g u r a t i o n P r o f i l e s�f  �g  0 o  KL�e�e ,0 parametersdictionary parametersDictionary�j  �i  - m  ST�d
�d 
bool�l  �k  * o      �c�c 40 useconfigurationprofiles useConfigurationProfiles( 565 n Zf787 I  [f�b9�a�b 0 logthis logThis9 :�`: b  [b;<; m  [^== �>> 4 u s e C o n f i g u r a t i o n P r o f i l e s :  < o  ^a�_�_ 40 useconfigurationprofiles useConfigurationProfiles�`  �a  8  f  Z[6 ?@? Z gyAB�^�]A = glCDC o  gj�\�\ 40 useconfigurationprofiles useConfigurationProfilesD m  jk�[
�[ boovtrueB r  ouEFE m  orGG �HH * c o n f i g u r a t i o n P r o f i l e sF l     I�Z�YI n      JKJ  ;  stK l rsL�X�WL o  rs�V�V ,0 propertiestoretrieve propertiesToRetrieve�X  �W  �Z  �Y  �^  �]  @ MNM l zz�U�T�S�U  �T  �S  N OPO r  z�QRQ l z�S�R�QS c  z�TUT l z�V�P�OV n z�WXW I  {��NY�M�N 0 valueforkey_ valueForKey_Y Z�LZ m  {~[[ �\\  u s e D e v i c e C l a s s�L  �M  X o  z{�K�K ,0 parametersdictionary parametersDictionary�P  �O  U m  ���J
�J 
bool�R  �Q  R o      �I�I  0 usedeviceclass useDeviceClassP ]^] n ��_`_ I  ���Ha�G�H 0 logthis logThisa b�Fb b  ��cdc m  ��ee �ff   u s e D e v i c e C l a s s :  d o  ���E�E  0 usedeviceclass useDeviceClass�F  �G  `  f  ��^ ghg Z ��ij�D�Ci = ��klk o  ���B�B  0 usedeviceclass useDeviceClassl m  ���A
�A boovtruej r  ��mnm m  ��oo �pp  d e v i c e C l a s sn l     q�@�?q n      rsr  ;  ��s l ��t�>�=t o  ���<�< ,0 propertiestoretrieve propertiesToRetrieve�>  �=  �@  �?  �D  �C  h uvu l ���;�:�9�;  �:  �9  v wxw r  ��yzy l ��{�8�7{ c  ��|}| l ��~�6�5~ n ��� I  ���4��3�4 0 valueforkey_ valueForKey_� ��2� m  ���� ���  u s e D e v i c e T y p e�2  �3  � o  ���1�1 ,0 parametersdictionary parametersDictionary�6  �5  } m  ���0
�0 
bool�8  �7  z o      �/�/ 0 usedevicetype useDeviceTypex ��� n ����� I  ���.��-�. 0 logthis logThis� ��,� b  ����� m  ���� ���  u s e D e v i c e T y p e :  � o  ���+�+ 0 usedevicetype useDeviceType�,  �-  �  f  ��� ��� Z �����*�)� = ����� o  ���(�( 0 usedevicetype useDeviceType� m  ���'
�' boovtrue� r  ����� m  ���� ���  d e v i c e T y p e� l     ��&�%� n      ���  ;  ��� l ����$�#� o  ���"�" ,0 propertiestoretrieve propertiesToRetrieve�$  �#  �&  �%  �*  �)  � ��� l ���!� ��!  �   �  � ��� r  ����� l ������ c  ����� l ������ n ����� I  ������ 0 valueforkey_ valueForKey_� ��� m  ���� ���  u s e E C I D�  �  � o  ���� ,0 parametersdictionary parametersDictionary�  �  � m  ���
� 
bool�  �  � o      �� 0 useecid useECID� ��� n ����� I  ������ 0 logthis logThis� ��� b  ����� m  ���� ���  u s e E C I D :  � o  ���� 0 useecid useECID�  �  �  f  ��� ��� Z ������ = ����� o  ���� 0 useecid useECID� m  ���
� boovtrue� r  ���� m  ���� ���  E C I D� l     ���� n      ���  ;   � l � ��
�	� o  � �� ,0 propertiestoretrieve propertiesToRetrieve�
  �	  �  �  �  �  � ��� l ����  �  �  � ��� r  ��� l ���� c  ��� l ���� n ��� I  � ����  0 valueforkey_ valueForKey_� ���� m  �� ��� " u s e E n c l o s u r e C o l o r��  ��  � o  ���� ,0 parametersdictionary parametersDictionary�  �  � m  ��
�� 
bool�  �  � o      ���� &0 useenclosurecolor useEnclosureColor� ��� n "��� I  "������� 0 logthis logThis� ���� b  ��� m  �� ��� & u s e E n c l o s u r e C o l o r :  � o  ���� &0 useenclosurecolor useEnclosureColor��  ��  �  f  � ��� Z #5������� = #(��� o  #&���� &0 useenclosurecolor useEnclosureColor� m  &'��
�� boovtrue� r  +1��� m  +.�� ���  e n c l o s u r e C o l o r� l     ������ n      ���  ;  /0� l ./������ o  ./���� ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��  � ��� l 66��������  ��  ��  � ��� r  6D��� l 6@������ c  6@��� l 6>������ n 6>��� I  7>������� 0 valueforkey_ valueForKey_� ���� m  7:�� ��� $ u s e F i r m w a r e V e r s i o n��  ��  � o  67���� ,0 parametersdictionary parametersDictionary��  ��  � m  >?��
�� 
bool��  ��  � o      ���� (0 usefirmwareversion useFirmwareVersion� ��� n EQ� � I  FQ������ 0 logthis logThis �� b  FM m  FI � ( u s e F i r m w a r e V e r s i o n :   o  IL���� (0 usefirmwareversion useFirmwareVersion��  ��     f  EF�  Z Rd	
����	 = RW o  RU���� (0 usefirmwareversion useFirmwareVersion m  UV��
�� boovtrue
 r  Z` m  Z] �  f i r m w a r e V e r s i o n l     ���� n        ;  ^_ l ]^���� o  ]^���� ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��    l ee��������  ��  ��    r  es l eo���� c  eo l em���� n em  I  fm��!���� 0 valueforkey_ valueForKey_! "��" m  fi## �$$  u s e I C C I D��  ��    o  ef���� ,0 parametersdictionary parametersDictionary��  ��   m  mn��
�� 
bool��  ��   o      ���� 0 useiccid useICCID %&% n t�'(' I  u���)���� 0 logthis logThis) *��* b  u|+,+ m  ux-- �..  u s e I C C I D :  , o  x{���� 0 useiccid useICCID��  ��  (  f  tu& /0/ Z ��12����1 = ��343 o  ������ 0 useiccid useICCID4 m  ����
�� boovtrue2 r  ��565 m  ��77 �88 
 I C C I D6 l     9����9 n      :;:  ;  ��; l ��<����< o  ������ ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��  0 =>= l ����������  ��  ��  > ?@? r  ��ABA l ��C����C c  ��DED l ��F����F n ��GHG I  ����I���� 0 valueforkey_ valueForKey_I J��J m  ��KK �LL  u s e I M E I��  ��  H o  ������ ,0 parametersdictionary parametersDictionary��  ��  E m  ����
�� 
bool��  ��  B o      ���� 0 useimei useIMEI@ MNM n ��OPO I  ����Q���� 0 logthis logThisQ R��R b  ��STS m  ��UU �VV  u s e I M E I :  T o  ������ 0 useimei useIMEI��  ��  P  f  ��N WXW Z ��YZ����Y = ��[\[ o  ������ 0 useimei useIMEI\ m  ����
�� boovtrueZ r  ��]^] m  ��__ �``  I M E I^ l     a����a n      bcb  ;  ��c l ��d����d o  ������ ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��  X efe l ����������  ��  ��  f ghg r  ��iji l ��k����k c  ��lml l ��n����n n ��opo I  ����q���� 0 valueforkey_ valueForKey_q r��r m  ��ss �tt  u s e L a n g u a g e��  ��  p o  ������ ,0 parametersdictionary parametersDictionary��  ��  m m  ����
�� 
bool��  ��  j o      ���� 0 uselanguage useLanguageh uvu n ��wxw I  ����y���� 0 logthis logThisy z��z b  ��{|{ m  ��}} �~~  u s e L a n g u a g e :  | o  ������ 0 uselanguage useLanguage��  ��  x  f  ��v � Z ��������� = ����� o  ������ 0 uselanguage useLanguage� m  ����
�� boovtrue� r  ����� m  ���� ���  l a n g u a g e� l     ������ n      ���  ;  ��� l �������� o  ������ ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� r  � ��� l �������� c  ����� l ������� n ����� I  ���~��}�~ 0 valueforkey_ valueForKey_� ��|� m  ���� ���  u s e L o c a l e�|  �}  � o  ���{�{ ,0 parametersdictionary parametersDictionary��  �  � m  ���z
�z 
bool��  ��  � o      �y�y 0 	uselocale 	useLocale� ��� n ��� I  �x��w�x 0 logthis logThis� ��v� b  	��� m  �� ���  u s e L o c a l e :  � o  �u�u 0 	uselocale 	useLocale�v  �w  �  f  � ��� Z  ���t�s� = ��� o  �r�r 0 	uselocale 	useLocale� m  �q
�q boovtrue� r  ��� m  �� ���  l o c a l e� l     ��p�o� n      ���  ;  � l ��n�m� o  �l�l ,0 propertiestoretrieve propertiesToRetrieve�n  �m  �p  �o  �t  �s  � ��� l !!�k�j�i�k  �j  �i  � ��� r  !/��� l !+��h�g� c  !+��� l !)��f�e� n !)��� I  ")�d��c�d 0 valueforkey_ valueForKey_� ��b� m  "%�� ���  u s e L o c a t i o n I D�b  �c  � o  !"�a�a ,0 parametersdictionary parametersDictionary�f  �e  � m  )*�`
�` 
bool�h  �g  � o      �_�_ 0 uselocationid useLocationID� ��� n 0<��� I  1<�^��]�^ 0 logthis logThis� ��\� b  18��� m  14�� ���  u s e L o c a t i o n I D :  � o  47�[�[ 0 uselocationid useLocationID�\  �]  �  f  01� ��� Z =O���Z�Y� = =B��� o  =@�X�X 0 uselocationid useLocationID� m  @A�W
�W boovtrue� r  EK��� m  EH�� ���  l o c a t i o n I D� l     ��V�U� n      ���  ;  IJ� l HI��T�S� o  HI�R�R ,0 propertiestoretrieve propertiesToRetrieve�T  �S  �V  �U  �Z  �Y  � ��� l PP�Q�P�O�Q  �P  �O  � ��� r  P^��� l PZ��N�M� c  PZ��� l PX��L�K� n PX��� I  QX�J��I�J 0 valueforkey_ valueForKey_� ��H� m  QT�� ���  u s e N a m e�H  �I  � o  PQ�G�G ,0 parametersdictionary parametersDictionary�L  �K  � m  XY�F
�F 
bool�N  �M  � o      �E�E 0 usename useName� ��� n _k��� I  `k�D��C�D 0 logthis logThis� ��B� b  `g��� m  `c�� ���  u s e N a m e :  � o  cf�A�A 0 usename useName�B  �C  �  f  _`� ��� Z l~���@�?� = lq��� o  lo�>�> 0 usename useName� m  op�=
�= boovtrue� r  tz��� m  tw�� �    n a m e� l     �<�; n        ;  xy l wx�:�9 o  wx�8�8 ,0 propertiestoretrieve propertiesToRetrieve�:  �9  �<  �;  �@  �?  �  l �7�6�5�7  �6  �5    r  �	
	 l ��4�3 c  � l ��2�1 n � I  ���0�/�0 0 valueforkey_ valueForKey_ �. m  �� � , u s e O r g a n i z a t i o n A d d r e s s�.  �/   o  ��-�- ,0 parametersdictionary parametersDictionary�2  �1   m  ���,
�, 
bool�4  �3  
 o      �+�+ 00 useorganizationaddress useOrganizationAddress  n �� I  ���*�)�* 0 logthis logThis �( b  �� m  �� � 0 u s e O r g a n i z a t i o n A d d r e s s :   o  ���'�' 00 useorganizationaddress useOrganizationAddress�(  �)    f  ��   Z ��!"�&�%! = ��#$# o  ���$�$ 00 useorganizationaddress useOrganizationAddress$ m  ���#
�# boovtrue" r  ��%&% m  ��'' �(( & o r g a n i z a t i o n A d d r e s s& l     )�"�!) n      *+*  ;  ��+ l ��,� �, o  ���� ,0 propertiestoretrieve propertiesToRetrieve�   �  �"  �!  �&  �%    -.- l ������  �  �  . /0/ r  ��121 l ��3��3 c  ��454 l ��6��6 n ��787 I  ���9�� 0 valueforkey_ valueForKey_9 :�: m  ��;; �<< 2 u s e O r g a n i z a t i o n D e p a r t m e n t�  �  8 o  ���� ,0 parametersdictionary parametersDictionary�  �  5 m  ���
� 
bool�  �  2 o      �� 60 useorganizationdepartment useOrganizationDepartment0 =>= n ��?@? I  ���A�� 0 logthis logThisA B�B b  ��CDC m  ��EE �FF 6 u s e O r g a n i z a t i o n D e p a r t m e n t :  D o  ���� 60 useorganizationdepartment useOrganizationDepartment�  �  @  f  ��> GHG Z ��IJ��I = ��KLK o  ���
�
 60 useorganizationdepartment useOrganizationDepartmentL m  ���	
�	 boovtrueJ r  ��MNM m  ��OO �PP , o r g a n i z a t i o n D e p a r t m e n tN l     Q��Q n      RSR  ;  ��S l ��T��T o  ���� ,0 propertiestoretrieve propertiesToRetrieve�  �  �  �  �  �  H UVU l ������  �  �  V WXW r  ��YZY l ��[� ��[ c  ��\]\ l ��^����^ n ��_`_ I  ����a���� 0 valueforkey_ valueForKey_a b��b m  ��cc �dd ( u s e O r g a n i z a t i o n E m a i l��  ��  ` o  ������ ,0 parametersdictionary parametersDictionary��  ��  ] m  ����
�� 
bool�   ��  Z o      ���� ,0 useorganizationemail useOrganizationEmailX efe n ��ghg I  ����i���� 0 logthis logThisi j��j b  ��klk m  ��mm �nn , u s e O r g a n i z a t i o n E m a i l :  l o  ������ ,0 useorganizationemail useOrganizationEmail��  ��  h  f  ��f opo Z �qr����q = ��sts o  ������ ,0 useorganizationemail useOrganizationEmailt m  ����
�� boovtruer r  uvu m  ww �xx " o r g a n i z a t i o n E m a i lv l     y����y n      z{z  ;  { l |����| o  ���� ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��  p }~} l ��������  ��  ��  ~ � r  ��� l ������ c  ��� l ������ n ��� I  ������� 0 valueforkey_ valueForKey_� ���� m  �� ��� & u s e O r g a n i z a t i o n N a m e��  ��  � o  ���� ,0 parametersdictionary parametersDictionary��  ��  � m  ��
�� 
bool��  ��  � o      ���� *0 useorganizationname useOrganizationName� ��� n '��� I  '������� 0 logthis logThis� ���� b  #��� m  �� ��� * u s e O r g a n i z a t i o n N a m e :  � o  "���� *0 useorganizationname useOrganizationName��  ��  �  f  � ��� Z (:������� = (-��� o  (+���� *0 useorganizationname useOrganizationName� m  +,��
�� boovtrue� r  06��� m  03�� ���   o r g a n i z a t i o n N a m e� l     ������ n      ���  ;  45� l 34������ o  34���� ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��  � ��� l ;;��������  ��  ��  � ��� r  ;I��� l ;E������ c  ;E��� l ;C������ n ;C��� I  <C������� 0 valueforkey_ valueForKey_� ���� m  <?�� ��� ( u s e O r g a n i z a t i o n P h o n e��  ��  � o  ;<���� ,0 parametersdictionary parametersDictionary��  ��  � m  CD��
�� 
bool��  ��  � o      ���� ,0 useorganizationphone useOrganizationPhone� ��� n JV��� I  KV������� 0 logthis logThis� ���� b  KR��� m  KN�� ��� , u s e O r g a n i z a t i o n P h o n e :  � o  NQ���� ,0 useorganizationphone useOrganizationPhone��  ��  �  f  JK� ��� Z Wi������� = W\��� o  WZ���� ,0 useorganizationphone useOrganizationPhone� m  Z[��
�� boovtrue� r  _e��� m  _b�� ��� " o r g a n i z a t i o n P h o n e� l     ������ n      ���  ;  cd� l bc������ o  bc���� ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��  � ��� l jj��������  ��  ��  � ��� r  jx��� l jt������ c  jt��� l jr������ n jr��� I  kr������� 0 valueforkey_ valueForKey_� ���� m  kn�� ���  u s e P a i r e d��  ��  � o  jk���� ,0 parametersdictionary parametersDictionary��  ��  � m  rs��
�� 
bool��  ��  � o      ���� 0 	usepaired 	usePaired� ��� n y���� I  z�������� 0 logthis logThis� ���� b  z���� m  z}�� ���  u s e P a i r e d :  � o  }����� 0 	usepaired 	usePaired��  ��  �  f  yz� ��� Z ��������� = ����� o  ������ 0 	usepaired 	usePaired� m  ����
�� boovtrue� r  ����� m  ���� ���  i s P a i r e d� l     ������ n      ���  ;  ��� l �������� o  ������ ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� r  ����� l �������� c  ����� l �������� n ��� � I  �������� 0 valueforkey_ valueForKey_ �� m  �� � ( u s e P a s s c o d e P r o t e c t e d��  ��    o  ������ ,0 parametersdictionary parametersDictionary��  ��  � m  ����
�� 
bool��  ��  � o      ���� ,0 usepasscodeprotected usePasscodeProtected�  n �� I  ����	���� 0 logthis logThis	 
��
 b  �� m  �� � , u s e P a s s c o d e P r o t e c t e d :   o  ������ ,0 usepasscodeprotected usePasscodeProtected��  ��    f  ��  Z ������ = �� o  ������ ,0 usepasscodeprotected usePasscodeProtected m  ����
�� boovtrue r  �� m  �� � " p a s s c o d e P r o t e c t e d l     ���� n        ;  �� l ������ o  ������ ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��    l ���������  ��  �     r  ��!"! l ��#�~�}# c  ��$%$ l ��&�|�{& n ��'(' I  ���z)�y�z 0 valueforkey_ valueForKey_) *�x* m  ��++ �,,  u s e P h o n e N u m b e r�x  �y  ( o  ���w�w ,0 parametersdictionary parametersDictionary�|  �{  % m  ���v
�v 
bool�~  �}  " o      �u�u  0 usephonenumber usePhoneNumber  -.- n ��/0/ I  ���t1�s�t 0 logthis logThis1 2�r2 b  ��343 m  ��55 �66   u s e P h o n e N u m b e r :  4 o  ���q�q  0 usephonenumber usePhoneNumber�r  �s  0  f  ��. 787 Z ��9:�p�o9 = ��;<; o  ���n�n  0 usephonenumber usePhoneNumber< m  ���m
�m boovtrue: r  ��=>= m  ��?? �@@  p h o n e N u m b e r> l     A�l�kA n      BCB  ;  ��C l ��D�j�iD o  ���h�h ,0 propertiestoretrieve propertiesToRetrieve�j  �i  �l  �k  �p  �o  8 EFE l ���g�f�e�g  �f  �e  F GHG r  �IJI l �K�d�cK c  �LML l ��N�b�aN n ��OPO I  ���`Q�_�` 0 valueforkey_ valueForKey_Q R�^R m  ��SS �TT . u s e P r o v i s i o n i n g P r o f i l e s�^  �_  P o  ���]�] ,0 parametersdictionary parametersDictionary�b  �a  M m  � �\
�\ 
bool�d  �c  J o      �[�[ 20 useprovisioningprofiles useProvisioningProfilesH UVU n WXW I  �ZY�Y�Z 0 logthis logThisY Z�XZ b  [\[ m  
]] �^^ 2 u s e P r o v i s i o n i n g P r o f i l e s :  \ o  
�W�W 20 useprovisioningprofiles useProvisioningProfiles�X  �Y  X  f  V _`_ Z %ab�V�Ua = cdc o  �T�T 20 useprovisioningprofiles useProvisioningProfilesd m  �S
�S boovtrueb r  !efe m  gg �hh ( p r o v i s i o n i n g P r o f i l e sf l     i�R�Qi n      jkj  ;   k l l�P�Ol o  �N�N ,0 propertiestoretrieve propertiesToRetrieve�P  �O  �R  �Q  �V  �U  ` mnm l &&�M�L�K�M  �L  �K  n opo r  &4qrq l &0s�J�Is c  &0tut l &.v�H�Gv n &.wxw I  '.�Fy�E�F 0 valueforkey_ valueForKey_y z�Dz m  '*{{ �||  u s e S e r i a l N u m b e r�D  �E  x o  &'�C�C ,0 parametersdictionary parametersDictionary�H  �G  u m  ./�B
�B 
bool�J  �I  r o      �A�A "0 useserialnumber useSerialNumberp }~} n 5A� I  6A�@��?�@ 0 logthis logThis� ��>� b  6=��� m  69�� ��� " u s e S e r i a l N u m b e r :  � o  9<�=�= "0 useserialnumber useSerialNumber�>  �?  �  f  56~ ��� Z BT���<�;� = BG��� o  BE�:�: "0 useserialnumber useSerialNumber� m  EF�9
�9 boovtrue� r  JP��� m  JM�� ���  s e r i a l N u m b e r� l     ��8�7� n      ���  ;  NO� l MN��6�5� o  MN�4�4 ,0 propertiestoretrieve propertiesToRetrieve�6  �5  �8  �7  �<  �;  � ��� l UU�3�2�1�3  �2  �1  � ��� r  Uc��� l U_��0�/� c  U_��� l U]��.�-� n U]��� I  V]�,��+�, 0 valueforkey_ valueForKey_� ��*� m  VY�� ���  u s e S u p e r v i s e d�*  �+  � o  UV�)�) ,0 parametersdictionary parametersDictionary�.  �-  � m  ]^�(
�( 
bool�0  �/  � o      �'�' 0 usesupervised useSupervised� ��� n dp��� I  ep�&��%�& 0 logthis logThis� ��$� b  el��� m  eh�� ���  u s e S u p e r v i s e d :  � o  hk�#�# 0 usesupervised useSupervised�$  �%  �  f  de� ��� Z q����"�!� = qv��� o  qt� �  0 usesupervised useSupervised� m  tu�
� boovtrue� r  y��� m  y|�� ���  i s S u p e r v i s e d� l     ���� n      ���  ;  }~� l |}���� o  |}�� ,0 propertiestoretrieve propertiesToRetrieve�  �  �  �  �"  �!  � ��� l ������  �  �  � ��� r  ����� l ������ c  ����� l ������ n ����� I  ������ 0 valueforkey_ valueForKey_� ��� m  ���� ��� 6 u s e S u p p l e m e n t a l B u i l d V e r s i o n�  �  � o  ���� ,0 parametersdictionary parametersDictionary�  �  � m  ���
� 
bool�  �  � o      �� :0 usesupplementalbuildversion useSupplementalBuildVersion� ��� n ����� I  ������ 0 logthis logThis� ��
� b  ����� m  ���� ��� : u s e S u p p l e m e n t a l B u i l d V e r s i o n :  � o  ���	�	 :0 usesupplementalbuildversion useSupplementalBuildVersion�
  �  �  f  ��� ��� Z ������� = ����� o  ���� :0 usesupplementalbuildversion useSupplementalBuildVersion� m  ���
� boovtrue� r  ����� m  ���� ��� 0 s u p p l e m e n t a l B u i l d V e r s i o n� l     ���� n      ���  ;  ��� l ������ o  ��� �  ,0 propertiestoretrieve propertiesToRetrieve�  �  �  �  �  �  � ��� l ����������  ��  ��  � ��� r  ����� l �������� c  ����� l �������� n ����� I  ��������� 0 valueforkey_ valueForKey_� ���� m  ���� ��� : u s e S u p p l e m e n t a l P r o d u c t V e r s i o n��  ��  � o  ������ ,0 parametersdictionary parametersDictionary��  ��  � m  ����
�� 
bool��  ��  � o      ���� >0 usesupplementalproductversion useSupplementalProductVersion� ��� n ����� I  ��������� 0 logthis logThis� ���� b  ����� m  ���� ��� > u s e S u p p l e m e n t a l P r o d u c t V e r s i o n :  � o  ������ >0 usesupplementalproductversion useSupplementalProductVersion��  ��  �  f  ��� � � Z ������ = �� o  ������ >0 usesupplementalproductversion useSupplementalProductVersion m  ����
�� boovtrue r  �� m  �� � 6 h u m a n R e a d a b l e P r o d u c t V e r s i o n l     	����	 n      

  ;  �� l ������ o  ������ ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��     l ����������  ��  ��    r  �� l ������ c  �� l ������ n �� I  �������� 0 valueforkey_ valueForKey_ �� m  �� �  u s e T a g s��  ��   o  ������ ,0 parametersdictionary parametersDictionary��  ��   m  ����
�� 
bool��  ��   o      ���� 0 usetags useTags  n ��  I  ����!���� 0 logthis logThis! "��" b  ��#$# m  ��%% �&&  u s e T a g s :  $ o  ������ 0 usetags useTags��  ��     f  �� '(' Z �)*����) = �+,+ o  ����� 0 usetags useTags, m  ��
�� boovtrue* r  -.- m  	// �00  t a g s. l     1����1 n      232  ;  
3 l 	
4����4 o  	
���� ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��  ( 565 l ��������  ��  ��  6 787 r  9:9 l ;����; c  <=< l >����> n ?@? I  ��A���� 0 valueforkey_ valueForKey_A B��B m  CC �DD ( u s e T o t a l D i s k C a p a c i t y��  ��  @ o  ���� ,0 parametersdictionary parametersDictionary��  ��  = m  ��
�� 
bool��  ��  : o      ���� ,0 usetotaldiskcapacity useTotalDiskCapacity8 EFE n  ,GHG I  !,��I���� 0 logthis logThisI J��J b  !(KLK m  !$MM �NN , u s e T o t a l D i s k C a p a c i t y :  L o  $'���� ,0 usetotaldiskcapacity useTotalDiskCapacity��  ��  H  f   !F OPO Z -?QR����Q = -2STS o  -0���� ,0 usetotaldiskcapacity useTotalDiskCapacityT m  01��
�� boovtrueR r  5;UVU m  58WW �XX " t o t a l D i s k C a p a c i t yV l     Y����Y n      Z[Z  ;  9:[ l 89\����\ o  89���� ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��  P ]^] l @@��������  ��  ��  ^ _`_ r  @Naba l @Jc����c c  @Jded l @Hf����f n @Hghg I  AH��i���� 0 valueforkey_ valueForKey_i j��j m  ADkk �ll  u s e U D I D��  ��  h o  @A���� ,0 parametersdictionary parametersDictionary��  ��  e m  HI��
�� 
bool��  ��  b o      ���� 0 useudid useUDID` mnm n O[opo I  P[��q���� 0 logthis logThisq r��r b  PWsts m  PSuu �vv  u s e U D I D :  t o  SV���� 0 useudid useUDID��  ��  p  f  OPn wxw Z \nyz����y = \a{|{ o  \_���� 0 useudid useUDID| m  _`��
�� boovtruez r  dj}~} m  dg ���  U D I D~ l     ������ n      ���  ;  hi� l gh������ o  gh���� ,0 propertiestoretrieve propertiesToRetrieve��  ��  ��  ��  ��  ��  x ��� l oo��������  ��  ��  � ��� r  o}��� l oy������ c  oy��� l ow������ n ow��� I  pw������� 0 valueforkey_ valueForKey_� ���� m  ps�� ���  u s e W i f i A d d r e s s��  ��  � o  op���� ,0 parametersdictionary parametersDictionary��  ��  � m  wx��
�� 
bool��  ��  � o      ����  0 usewifiaddress useWifiAddress� ��� n ~���� I  �������� 0 logthis logThis� ���� b  ���� m  ��� ���   u s e W i f i A d d r e s s :  � o  ������  0 usewifiaddress useWifiAddress��  ��  �  f  ~� ��� Z ��������� = ����� o  ������  0 usewifiaddress useWifiAddress� m  ����
�� boovtrue� r  ����� m  ���� ���  w i f i A d d r e s s� l     ������ n      ���  ;  ��� l ������� o  ���~�~ ,0 propertiestoretrieve propertiesToRetrieve��  �  ��  ��  ��  ��  � ��� l ���}�|�{�}  �|  �{  � ��� n ����� I  ���z��y�z 0 logthis logThis� ��x� o  ���w�w ,0 propertiestoretrieve propertiesToRetrieve�x  �y  �  f  ��� ��� l ���v�u�t�v  �u  �t  � ��� O  ����� k  ���� ��� r  ����� n  ����� o  ���s�s 40 defaultbooleanproperties defaultBooleanProperties�  g  ��� o      �r�r 00 thesebooleanproperties theseBooleanProperties� ��q� r  ����� I  ���p��o�p B0 cnfgvaluesofspecifiedproperties CNFGvaluesOfSpecifiedProperties� ��� o  ���n�n 0 
theseecids 
theseECIDs� ��� o  ���m�m ,0 propertiestoretrieve propertiesToRetrieve� ��l� m  ���k
�k boovfals�l  �o  � o      �j�j 0 queryresult queryResult�q  � 4  ���i�
�i 
scpt� m  ���� ��� * C o n f i g u r a t i o n   U t i l i t y� ��� l ���h�g�f�h  �g  �f  � ��� r  ����� n  ����� 4  ���e�
�e 
cobj� m  ���d�d � o  ���c�c 0 queryresult queryResult� o      �b�b 0 devicecount deviceCount� ��� r  ����� n  ����� 4  ���a�
�a 
cobj� m  ���`�` � o  ���_�_ 0 queryresult queryResult� o      �^�^ 0 columnheaders columnHeaders� ��� r  ����� l ����]�\� I ���[��Z
�[ .corecnte****       ****� o  ���Y�Y 0 columnheaders columnHeaders�Z  �]  �\  � o      �X�X 0 columncount columnCount� ��� r  ���� n  ����� 7 ���W��
�W 
cobj� m  ���V�V � m  ���U�U��� o  ���T�T 0 queryresult queryResult� o      �S�S 0 rowdata rowData� ��� r  	��� o  �R�R 0 devicecount deviceCount� o      �Q�Q 0 rowcount rowCount� ��� l 

�P�O�N�P  �O  �N  � ��� O  

#��� k  
"�� ��� I �M�L�K
�M .miscactvnull��� ��� null�L  �K  � ��� Z  e���J�� G  1��� H  )   l (�I�H I (�G�F
�G .coredoexnull���     **** 4  $�E
�E 
docu m  "#�D�D �F  �I  �H  � l ,/�C�B = ,/ o  ,-�A�A 20 shouldcreatenewdocument shouldCreateNewDocument m  -.�@
�@ boovtrue�C  �B  � k  4X 	 r  4C

 I 4?�?�>
�? .corecrel****      � null�>   �=�<
�= 
kocl m  8;�;
�; 
docu�<   o      �:�: 0 thisdocument thisDocument	 �9 O  DX I JW�8�7
�8 .coredelonull���     obj  n  JS 2  OS�6
�6 
NmTb 2  JO�5
�5 
NmSh�7   o  DG�4�4 0 thisdocument thisDocument�9  �J  � r  [e 4  [a�3
�3 
docu m  _`�2�2  o      �1�1 0 thisdocument thisDocument� �0 O  f
" O  l
! k  t
   r  ty  m  tu�/�/   o      �.�. 0 thiscounter thisCounter !"! r  z#$# o  z{�-�- 0 
tabletitle 
tableTitle$ o      �,�, 0 basename baseName" %&% T  ��'' Z  ��()�+*( I ���*+�)
�* .coredoexnull���     ****+ 4  ���(,
�( 
NmTb, o  ���'�' 0 
tabletitle 
tableTitle�)  ) k  ��-- ./. r  ��010 c  ��232 l ��4�&�%4 b  ��565 b  ��787 o  ���$�$ 0 basename baseName8 m  ��99 �::  -6 o  ���#�# 0 thiscounter thisCounter�&  �%  3 m  ���"
�" 
ctxt1 o      �!�! 0 
tabletitle 
tableTitle/ ;� ; r  ��<=< [  ��>?> o  ���� 0 thiscounter thisCounter? m  ���� = o      �� 0 thiscounter thisCounter�   �+  *  S  ��& @A@ l ������  �  �  A BCB r  ��DED I ����F
� .corecrel****      � null�  F �GH
� 
koclG m  ���
� 
NmTbH �I�
� 
prdtI K  ��JJ �KL
� 
NmTcK o  ���� 0 columncount columnCountL �MN
� 
NmTrM [  ��OPO o  ���� 0 devicecount deviceCountP m  ���� N �QR
� 
NmHrQ m  ���� R �ST
� 
NmHCS m  ����  T �
U�	
�
 
pnamU o  ���� 0 
tabletitle 
tableTitle�	  �  E o      �� 0 	thistable 	thisTableC V�V O  �
 WXW k  �
YY Z[Z l ���\]�  \   format table cells   ] �^^ &   f o r m a t   t a b l e   c e l l s[ _`_ r  ��aba m  ���
� tAVTactrb n      cdc 1  ���
� 
texAd 2  ���
� 
NmCl` efe r  �		ghg m  ���
� tAVTactrh n      iji 1  		� 
�  
txVAj 2  �	��
�� 
NmClf klk l 	
	
��mn��  m   place header titles   n �oo (   p l a c e   h e a d e r   t i t l e sl pqp Y  	
	qr��st��r O  		luvu k  	&	kww xyx r  	&	4z{z n  	&	0|}| 4  	)	0��~
�� 
cobj~ o  	,	/���� 0 i  } o  	&	)���� 0 columnheaders columnHeaders{ o      ���� 0 
thisheader 
thisHeadery � O  	5	a��� Z  	@	`������ = 	@	G��� o  	@	C���� 0 
thisheader 
thisHeader� m  	C	F�� ��� 6 h u m a n R e a d a b l e P r o d u c t V e r s i o n� r  	J	Q��� m  	J	M�� ��� : S u p p l e m e n t a l   F i r m w a r e   V e r s i o n� o      ���� "0 thisheadertitle thisHeaderTitle��  � r  	T	`��� I  	T	\������� *0 camelcasetowordcase camelCaseToWordCase� ���� o  	U	X���� 0 
thisheader 
thisHeader��  ��  � o      ���� "0 thisheadertitle thisHeaderTitle� 4  	5	=���
�� 
scpt� m  	9	<�� ��� * C o n f i g u r a t i o n   U t i l i t y� ���� r  	b	k��� o  	b	e���� "0 thisheadertitle thisHeaderTitle� 1  	e	j��
�� 
NMCv��  v n  		#��� 4  		#���
�� 
NmCl� m  	!	"���� � 4  		���
�� 
NMCo� o  		���� 0 i  �� 0 i  s m  		���� t l 		������ o  		���� 0 columncount columnCount��  ��  ��  q ��� l 	r	r������  �   populate rows   � ���    p o p u l a t e   r o w s� ���� Y  	r
�������� Y  	~
�������� k  	�
�� ��� r  	�	���� l 	�	������� n  	�	���� 4  	�	����
�� 
cobj� o  	�	����� 0 i  � l 	�	������� n  	�	���� 4  	�	����
�� 
cobj� o  	�	����� 0 q  � o  	�	����� 0 rowdata rowData��  ��  ��  ��  � o      ���� 0 thisdata thisData� ��� Z  	�	�������� = 	�	���� l 	�	������� n  	�	���� m  	�	���
�� 
pcls� o  	�	����� 0 thisdata thisData��  ��  � m  	�	���
�� 
list� Q  	�	����� k  	�	��� ��� r  	�	���� o  	�	���
�� 
ret � n     ��� 1  	�	���
�� 
txdl� 1  	�	���
�� 
ascr� ��� r  	�	���� c  	�	���� o  	�	����� 0 thisdata thisData� m  	�	���
�� 
TEXT� o      ���� 0 thisdata thisData� ���� r  	�	���� m  	�	��� ���  � n     ��� 1  	�	���
�� 
txdl� 1  	�	���
�� 
ascr��  � R      ������
�� .ascrerr ****      � ****��  ��  � k  	�	��� ��� r  	�	���� m  	�	��� ���  � n     ��� 1  	�	���
�� 
txdl� 1  	�	���
�� 
ascr� ���� r  	�	���� l 	�	������� n 	�	���� I  	�	�������� &0 nslocalizedstring NSLocalizedString� ���� m  	�	��� ��� * D A T A _ C O N V E R S I O N _ E R R O R��  ��  �  f  	�	���  ��  � o      ���� 0 thisdata thisData��  ��  ��  � ���� O  	�
��� k  

�� ��� l 

������  � 3 - set value to (item i of (item q of rowData))   � ��� Z   s e t   v a l u e   t o   ( i t e m   i   o f   ( i t e m   q   o f   r o w D a t a ) )� ���� r  

��� o  

���� 0 thisdata thisData� 1  

��
�� 
NMCv��  � n  	�
��� 4  

���
�� 
NmCl� o  

���� 0 q  � 4  	�
���
�� 
NMRw� l 	�
 ������ [  	�
 ��� o  	�	����� 0 i  � m  	�	����� ��  ��  ��  �� 0 q  � m  	�	����� � o  	�	����� 0 columncount columnCount��  �� 0 i  � m  	u	v���� � o  	v	y���� 0 rowcount rowCount��  ��  X o  ������ 0 	thistable 	thisTable�   1  lq��
�� 
NmAS o  fi���� 0 thisdocument thisDocument�0  � 5  
�����
�� 
capp� m  �� ��� . c o m . a p p l e . i W o r k . N u m b e r s
�� kfrmID  � �	 � l 
$
$��������  ��  ��  	  			 L  
$
&		 o  
$
%���� 0 
theseecids 
theseECIDs	 	��	 l 
'
'��������  ��  ��  ��   � R      ��		
�� .ascrerr ****      � ****	 o      ���� (0 errormessagestring errorMessageString	 ��	��
�� 
errn	 o      ���� 0 errornumber errorNumber��   � k  
0
l		 			
		 n 
0
8			 I  
1
8��	���� 0 logthis logThis	 	��	 o  
1
4���� (0 errormessagestring errorMessageString��  ��  	  f  
0
1	
 	��	 Z  
9
l		��		 > 
9
@			 o  
9
<���� 0 errornumber errorNumber	 m  
<
?������	 k  
C
V		 			 r  
C
Q			 K  
C
K		 ��	���� 60 nsapplescripterrormessage NSAppleScriptErrorMessage	 o  
F
I���� (0 errormessagestring errorMessageString��  	 n      			 1  
L
P��
�� 
pcnt	 o  
K
L���� 0 errorref errorRef	 	��	 L  
R
V		 m  
R
U��
�� 
msng��  ��  	 k  
Y
l	 	  	!	"	! r  
Y
g	#	$	# K  
Y
a	%	% ��	&���� 40 nsapplescripterrornumber NSAppleScriptErrorNumber	& m  
\
_��������  	$ n      	'	(	' 1  
b
f��
�� 
pcnt	( o  
a
b���� 0 errorref errorRef	" 	)��	) L  
h
l	*	* m  
h
k��
�� 
msng��  ��  ��   � 	+	,	+ l     ��~�}�  �~  �}  	, 	-	.	- l      �|	/	0�|  	/ = 7 HANDLER CALLED BEFORE ACTION VIEW APPEARS IN WORKFLOW    	0 �	1	1 n   H A N D L E R   C A L L E D   B E F O R E   A C T I O N   V I E W   A P P E A R S   I N   W O R K F L O W  	. 	2	3	2 i   } �	4	5	4 I      �{�z�y�{ 
0 opened  �z  �y  	5 n    	6	7	6 I    �x	8�w�x 0 logthis logThis	8 	9�v	9 m    	:	: �	;	;  o p e n e d ( )�v  �w  	7  f     	3 	<	=	< l     �u�t�s�u  �t  �s  	= 	>	?	> l      �r	@	A�r  	@ \ V HANDLER CALLED TO STORE THE CURRENT SELECTIONS. CALLED WHEN WORKFLOW IS SAVED OR RUN    	A �	B	B �   H A N D L E R   C A L L E D   T O   S T O R E   T H E   C U R R E N T   S E L E C T I O N S .   C A L L E D   W H E N   W O R K F L O W   I S   S A V E D   O R   R U N  	? 	C	D	C i   � �	E	F	E I      �q�p�o�q $0 updateparameters updateParameters�p  �o  	F n    	G	H	G I    �n	I�m�n 0 logthis logThis	I 	J�l	J m    	K	K �	L	L $ u p d a t e P a r a m e t e r s ( )�l  �m  	H  f     	D 	M	N	M l     �k�j�i�k  �j  �i  	N 	O	P	O i   � �	Q	R	Q I      �h	S�g�h .0 uncheckallcheckboxes_ uncheckAllCheckboxes_	S 	T�f	T o      �e�e 
0 sender  �f  �g  	R k     4	U	U 	V	W	V n    	X	Y	X I    �d	Z�c�d 0 logthis logThis	Z 	[�b	[ m    	\	\ �	]	] 6 u n c h e c k A l l C h e c k b o x e s : s e n d e r�b  �c  	Y  f     	W 	^�a	^ Y    4	_�`	`	a�_	_ k    /	b	b 	c	d	c r    #	e	f	e n    !	g	h	g 4    !�^	i
�^ 
cobj	i o     �]�] 0 i  	h o    �\�\ ,0 bindingpropertynames bindingPropertyNames	f o      �[�[ 20 thisbindingpropertyname thisBindingPropertyName	d 	j�Z	j n  $ /	k	l	k l  % /	m�Y�X	m n  % /	n	o	n I   ) /�W	p�V�W $0 setvalue_forkey_ setValue_forKey_	p 	q	r	q m   ) *�U
�U boovfals	r 	s�T	s o   * +�S�S 20 thisbindingpropertyname thisBindingPropertyName�T  �V  	o I   % )�R�Q�P�R 0 
parameters  �Q  �P  �Y  �X  	l  f   $ %�Z  �` 0 i  	` m   
 �O�O 	a l   	t�N�M	t I   �L	u�K
�L .corecnte****       ****	u o    �J�J ,0 bindingpropertynames bindingPropertyNames�K  �N  �M  �_  �a  	P 	v	w	v l     �I�H�G�I  �H  �G  	w 	x	y	x i   � �	z	{	z I      �F	|�E�F *0 checkallcheckboxes_ checkAllCheckboxes_	| 	}�D	} o      �C�C 
0 sender  �D  �E  	{ k     4	~	~ 		�	 n    	�	�	� I    �B	��A�B 0 logthis logThis	� 	��@	� m    	�	� �	�	� 2 c h e c k A l l C h e c k b o x e s : s e n d e r�@  �A  	�  f     	� 	��?	� Y    4	��>	�	��=	� k    /	�	� 	�	�	� r    #	�	�	� n    !	�	�	� 4    !�<	�
�< 
cobj	� o     �;�; 0 i  	� o    �:�: ,0 bindingpropertynames bindingPropertyNames	� o      �9�9 20 thisbindingpropertyname thisBindingPropertyName	� 	��8	� n  $ /	�	�	� l  % /	��7�6	� n  % /	�	�	� I   ) /�5	��4�5 $0 setvalue_forkey_ setValue_forKey_	� 	�	�	� m   ) *�3
�3 boovtrue	� 	��2	� o   * +�1�1 20 thisbindingpropertyname thisBindingPropertyName�2  �4  	� I   % )�0�/�.�0 0 
parameters  �/  �.  �7  �6  	�  f   $ %�8  �> 0 i  	� m   
 �-�- 	� l   	��,�+	� I   �*	��)
�* .corecnte****       ****	� o    �(�( ,0 bindingpropertynames bindingPropertyNames�)  �,  �+  �=  �?  	y 	�	�	� l     �'�&�%�'  �&  �%  	� 	�	�	� i   � �	�	�	� I      �$	��#�$ 0 logthis logThis	� 	��"	� o      �!�! 0 	itemtolog 	itemToLog�"  �#  	� Z     R	�	�� �	� =    	�	�	� o     �� 0 loggingstatus loggingStatus	� m    �
� boovtrue	� O   
 N	�	�	� Z    M	�	��	�	� =   	�	�	� n    	�	�	� m    �
� 
pcls	� o    �� 0 	itemtolog 	itemToLog	� m    �
� 
list	� k    C	�	� 	�	�	� r    	�	�	� l   	���	� I   �	��
� .corecnte****       ****	� o    �� 0 	itemtolog 	itemToLog�  �  �  	� o      �� 0 	itemcount 	itemCount	� 	��	� Y    C	��	�	��	� I  ( >�	��
� .ascrcmnt****      � ****	� l  ( :	���	� b   ( :	�	�	� b   ( 5	�	�	� b   ( 3	�	�	� b   ( /	�	�	� b   ( -	�	�	� m   ( )	�	� �	�	� T A C T I O N :   N e w   P r o p e r t i e s   T a b l e   f o r   D e v i c e s :  	� l  ) ,	���
	� c   ) ,	�	�	� o   ) *�	�	 0 i  	� m   * +�
� 
TEXT�  �
  	� m   - .	�	� �	�	�  :	� l  / 2	���	� c   / 2	�	�	� o   / 0�� 0 	itemcount 	itemCount	� m   0 1�
� 
TEXT�  �  	� 1   3 4�
� 
spac	� l  5 9	���	� n   5 9	�	�	� 4   6 9� 	�
�  
cobj	� o   7 8���� 0 i  	� o   5 6���� 0 	itemtolog 	itemToLog�  �  �  �  �  � 0 i  	� m   ! "���� 	� l  " #	�����	� o   " #���� 0 	itemcount 	itemCount��  ��  �  �  �  	� I  F M��	���
�� .ascrcmnt****      � ****	� l  F I	�����	� b   F I	�	�	� m   F G	�	� �	�	� T A C T I O N :   N e w   P r o p e r t i e s   T a b l e   f o r   D e v i c e s :  	� o   G H���� 0 	itemtolog 	itemToLog��  ��  ��  	� m   
 ��
�� misccura�   �  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l     ��	�	���  	�   LOCALIZATION ROUTINE   	� �	�	� *   L O C A L I Z A T I O N   R O U T I N E	� 	�	�	� i   � �	�	�	� I      ��	����� &0 nslocalizedstring NSLocalizedString	� 	���	� 1      ��
�� 
kMsg��  ��  	� k     	�	� 	�	�	� r     	�	�	� b     		�	�	� b     	�	�	� o     ���� .0 actionidentiferstring actionIdentiferString	� m    	�	� �	�	�  -	� 1    ��
�� 
kMsg	� 1      ��
�� 
kMsg	� 	���	� L    	�	� c    	�	�	� n   	�	�	� l   	�����	� n   	�
 	� I    ��
���� H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_
 


 1    ��
�� 
kMsg
 


 l   
����
 m    ��
�� 
msng��  ��  
 
��
 l   
����
 m    ��
�� 
msng��  ��  ��  ��  
  I    �������� 
0 bundle  ��  ��  ��  ��  	�  f    	� m    ��
�� 
utxt��  	� 
	��
	 l     ��������  ��  ��  ��    

��

 l     ��������  ��  ��  ��       ��

��  
 ���� D0  new_properties_table_for_devices  New_Properties_Table_for_Devices
 �� 

�� D0  new_properties_table_for_devices  New_Properties_Table_for_Devices
 

 ����

�� misccura
�� 
pcls
 �

  A M B u n d l e A c t i o n
 ��
���� /







��  
 ����������������������
�� 
pare�� 0 loggingstatus loggingStatus�� .0 actionidentiferstring actionIdentiferString�� ,0 bindingpropertynames bindingPropertyNames�� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�� 
0 opened  �� $0 updateparameters updateParameters�� .0 uncheckallcheckboxes_ uncheckAllCheckboxes_�� *0 checkallcheckboxes_ checkAllCheckboxes_�� 0 logthis logThis�� &0 nslocalizedstring NSLocalizedString��  
�� boovtrue
 ��
�� (
 (  9 = A E I M Q U Y ] a e i m q u y } � � � � � � � � � � � � � � � � � � � � � �
 �� �����

���� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�� ��
�� 
  �������� 	0 input  �� 0 anaction anAction�� 0 errorref errorRef��  
 B����������������������������������������������������������������������������������������������������������~�}�|�{�z�y�x�w�v�u�t�s�r�� 	0 input  �� 0 anaction anAction�� 0 errorref errorRef�� 0 
theseecids 
theseECIDs�� ,0 parametersdictionary parametersDictionary�� 20 shouldcreatenewdocument shouldCreateNewDocument�� 0 
tabletitle 
tableTitle�� ,0 propertiestoretrieve propertiesToRetrieve�� 60 usehastelephonycapability useHasTelephonyCapability�� (0 useactivationstate useActivationState�� $0 useallowspairing useAllowsPairing�� 40 usebackupwillbeencrypted useBackupWillBeEncrypted�� 60 usebatterycurrentcapacity useBatteryCurrentCapacity�� ,0 usebatteryischarging useBatteryIsCharging�� *0 usebluetoothaddress useBluetoothAddress��  0 usebootedstate useBootedState�� "0 usebuildversion useBuildVersion�� 60 usecloudbackupsareenabled useCloudBackupsAreEnabled�� 0 usecolor useColor�� 40 useconfigurationprofiles useConfigurationProfiles��  0 usedeviceclass useDeviceClass�� 0 usedevicetype useDeviceType�� 0 useecid useECID�� &0 useenclosurecolor useEnclosureColor�� (0 usefirmwareversion useFirmwareVersion�� 0 useiccid useICCID�� 0 useimei useIMEI�� 0 uselanguage useLanguage�� 0 	uselocale 	useLocale�� 0 uselocationid useLocationID�� 0 usename useName�� 00 useorganizationaddress useOrganizationAddress�� 60 useorganizationdepartment useOrganizationDepartment�� ,0 useorganizationemail useOrganizationEmail�� *0 useorganizationname useOrganizationName�� ,0 useorganizationphone useOrganizationPhone�� 0 	usepaired 	usePaired�� ,0 usepasscodeprotected usePasscodeProtected��  0 usephonenumber usePhoneNumber�� 20 useprovisioningprofiles useProvisioningProfiles�� "0 useserialnumber useSerialNumber�� 0 usesupervised useSupervised�� :0 usesupplementalbuildversion useSupplementalBuildVersion�� >0 usesupplementalproductversion useSupplementalProductVersion�� 0 usetags useTags�� ,0 usetotaldiskcapacity useTotalDiskCapacity�� 0 useudid useUDID��  0 usewifiaddress useWifiAddress�� 00 thesebooleanproperties theseBooleanProperties�� 0 queryresult queryResult�� 0 devicecount deviceCount�� 0 columnheaders columnHeaders� 0 columncount columnCount�~ 0 rowdata rowData�} 0 rowcount rowCount�| 0 thisdocument thisDocument�{ 0 thiscounter thisCounter�z 0 basename baseName�y 0 	thistable 	thisTable�x 0 i  �w 0 
thisheader 
thisHeader�v "0 thisheadertitle thisHeaderTitle�u 0 q  �t 0 thisdata thisData�s (0 errormessagestring errorMessageString�r 0 errornumber errorNumber
 � ��q�p�o�n%�m�l/?�kIQ]f{����������%/CMWku���������3=G[eo����������#-7KU_s}����������';EOcmw���������+5?S]g{����������%/CMWku����j��i�h�g�f�e��d�c�b�a�`�_�^�]�\�[9�Z�Y�X�W�V�U�T�S�R�Q�P�O�N����M�L�K�J�I�H�G��F�E���D�C
�B�A�@�?�>�q 0 logthis logThis
�p 
list�o &0 nslocalizedstring NSLocalizedString�n 0 
parameters  �m 0 valueforkey_ valueForKey_
�l 
bool
�k 
ctxt
�j 
scpt�i 40 defaultbooleanproperties defaultBooleanProperties�h B0 cnfgvaluesofspecifiedproperties CNFGvaluesOfSpecifiedProperties
�g 
cobj
�f .corecnte****       ****
�e 
capp
�d kfrmID  
�c .miscactvnull��� ��� null
�b 
docu
�a .coredoexnull���     ****
�` 
kocl
�_ .corecrel****      � null
�^ 
NmSh
�] 
NmTb
�\ .coredelonull���     obj 
�[ 
NmAS
�Z 
prdt
�Y 
NmTc
�X 
NmTr
�W 
NmHr
�V 
NmHC
�U 
pnam�T 
�S 
�R tAVTactr
�Q 
NmCl
�P 
texA
�O 
txVA
�N 
NMCo�M *0 camelcasetowordcase camelCaseToWordCase
�L 
NMCv
�K 
pcls
�J 
ret 
�I 
ascr
�H 
txdl
�G 
TEXT�F  �E  
�D 
NMRw�C (0 errormessagestring errorMessageString
 �=�<�;
�= 
errn�< 0 errornumber errorNumber�;  �B���A 60 nsapplescripterrormessage NSAppleScriptErrorMessage
�@ 
pcnt
�? 
msng�> 40 nsapplescripterrornumber NSAppleScriptErrorNumber��
m)�k+ O
#��&E�O�jv  )j)�k+ Y hO)j+ E�O��k+ �&E�O)�%k+ O��k+ �&E�O)�%k+ O��  )�k+ E�O)�%k+ Y hOjvE�O�a k+ �&E�O)a �%k+ O�e  a �6FY hO�a k+ �&E�O)a �%k+ O�e  a �6FY hO�a k+ �&E�O)a �%k+ O�e  a �6FY hO�a k+ �&E�O)a �%k+ O�e  a �6FY hO�a k+ �&E�O)a �%k+ O�e  a �6FY hO�a k+ �&E�O)a  �%k+ O�e  a !�6FY hO�a "k+ �&E�O)a #�%k+ O�e  a $�6FY hO�a %k+ �&E�O)a &�%k+ O�e  a '�6FY hO�a (k+ �&E^ O)a )] %k+ O] e  a *�6FY hO�a +k+ �&E^ O)a ,] %k+ O] e  a -�6FY hO�a .k+ �&E^ O)a /] %k+ O] e  a 0�6FY hO�a 1k+ �&E^ O)a 2] %k+ O] e  a 3�6FY hO�a 4k+ �&E^ O)a 5] %k+ O] e  a 6�6FY hO�a 7k+ �&E^ O)a 8] %k+ O] e  a 9�6FY hO�a :k+ �&E^ O)a ;] %k+ O] e  a <�6FY hO�a =k+ �&E^ O)a >] %k+ O] e  a ?�6FY hO�a @k+ �&E^ O)a A] %k+ O] e  a B�6FY hO�a Ck+ �&E^ O)a D] %k+ O] e  a E�6FY hO�a Fk+ �&E^ O)a G] %k+ O] e  a H�6FY hO�a Ik+ �&E^ O)a J] %k+ O] e  a K�6FY hO�a Lk+ �&E^ O)a M] %k+ O] e  a N�6FY hO�a Ok+ �&E^ O)a P] %k+ O] e  a Q�6FY hO�a Rk+ �&E^ O)a S] %k+ O] e  a T�6FY hO�a Uk+ �&E^ O)a V] %k+ O] e  a W�6FY hO�a Xk+ �&E^  O)a Y]  %k+ O]  e  a Z�6FY hO�a [k+ �&E^ !O)a \] !%k+ O] !e  a ]�6FY hO�a ^k+ �&E^ "O)a _] "%k+ O] "e  a `�6FY hO�a ak+ �&E^ #O)a b] #%k+ O] #e  a c�6FY hO�a dk+ �&E^ $O)a e] $%k+ O] $e  a f�6FY hO�a gk+ �&E^ %O)a h] %%k+ O] %e  a i�6FY hO�a jk+ �&E^ &O)a k] &%k+ O] &e  a l�6FY hO�a mk+ �&E^ 'O)a n] '%k+ O] 'e  a o�6FY hO�a pk+ �&E^ (O)a q] (%k+ O] (e  a r�6FY hO�a sk+ �&E^ )O)a t] )%k+ O] )e  a u�6FY hO�a vk+ �&E^ *O)a w] *%k+ O] *e  a x�6FY hO�a yk+ �&E^ +O)a z] +%k+ O] +e  a {�6FY hO�a |k+ �&E^ ,O)a }] ,%k+ O] ,e  a ~�6FY hO�a k+ �&E^ -O)a �] -%k+ O] -e  a ��6FY hO�a �k+ �&E^ .O)a �] .%k+ O] .e  a ��6FY hO�a �k+ �&E^ /O)a �] /%k+ O] /e  a ��6FY hO)�k+ O)a �a �/ *a �,E^ 0O*��fm+ �E^ 1UO] 1a �k/E^ 2O] 1a �l/E^ 3O] 3j �E^ 4O] 1[a �\[Zm\Zi2E^ 5O] 2E^ 6O)a �a �a �0*j �O*a �k/j �
 �e �& )*a �a �l �E^ 7O] 7 *a �-a �-j �UY *a �k/E^ 7O] 7�*a �,�kE^ 8O�E^ 9O 3hZ*a ��/j � ] 9a �%] 8%�&E�O] 8kE^ 8Y [OY��O*a �a �a �a �] 4a �] 2ka �ka �ja ��a �a � �E^ :O] :3a �*a �-a �,FOa �*a �-a �,FO fk] 4kh ;*a �] ;/a �k/ G] 3a �] ;/E^ <O)a �a �/ "] <a �  a �E^ =Y *] <k+ �E^ =UO] =*a �,FU[OY��O �k] 6kh ; �k] 4kh >] 5a �] >/a �] ;/E^ ?O] ?a �,�  K (_ �_ �a �,FO] ?a �&E^ ?Oa �_ �a �,FW X � �a �_ �a �,FO)a �k+ E^ ?Y hO*a �] ;k/a �] >/ ] ?*a �,FU[OY�o[OY�^UUUUO�OPW CX � �)] @k+ O] Aa � a �] @l�a �,FOa �Y a �a �l�a �,FOa �
 �:	5�9�8
 
!�7�: 
0 opened  �9  �8  
   
! 	:�6�6 0 logthis logThis�7 )�k+ 
 �5	F�4�3
"
#�2�5 $0 updateparameters updateParameters�4  �3  
"  
# 	K�1�1 0 logthis logThis�2 )�k+ 
 �0	R�/�.
$
%�-�0 .0 uncheckallcheckboxes_ uncheckAllCheckboxes_�/ �,
&�, 
&  �+�+ 
0 sender  �.  
$ �*�)�(�* 
0 sender  �) 0 i  �( 20 thisbindingpropertyname thisBindingPropertyName
% 	\�'�&�%�$�#�' 0 logthis logThis
�& .corecnte****       ****
�% 
cobj�$ 0 
parameters  �# $0 setvalue_forkey_ setValue_forKey_�- 5)�k+ O ,kb  j kh b  �/E�O)j+ f�l+ [OY��
 �"	{�!� 
'
(��" *0 checkallcheckboxes_ checkAllCheckboxes_�! �
)� 
)  �� 
0 sender  �   
' ���� 
0 sender  � 0 i  � 20 thisbindingpropertyname thisBindingPropertyName
( 	������� 0 logthis logThis
� .corecnte****       ****
� 
cobj� 0 
parameters  � $0 setvalue_forkey_ setValue_forKey_� 5)�k+ O ,kb  j kh b  �/E�O)j+ e�l+ [OY��
 �	���
*
+�� 0 logthis logThis� �
,� 
,  �� 0 	itemtolog 	itemToLog�  
* ���� 0 	itemtolog 	itemToLog� 0 	itemcount 	itemCount� 0 i  
+ ��
�	�	��	����	�
� misccura
�
 
pcls
�	 
list
� .corecnte****       ****
� 
TEXT
� 
spac
� 
cobj
� .ascrcmnt****      � ****� Sb  e  I� A��,�  2�j E�O $k�kh ��&%�%��&%�%��/%j 	[OY��Y 	�%j 	UY h
 �	���
-
.� � &0 nslocalizedstring NSLocalizedString� ��
/�� 
/  ��
�� 
kMsg�  
- ��
�� 
kMsg
. 	����������� 
0 bundle  
�� 
msng�� H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_
�� 
utxt�  b  �%�%E�O)j+ ���m+ �& ascr  ��ޭ