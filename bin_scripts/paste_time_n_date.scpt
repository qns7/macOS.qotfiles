FasdUAS 1.101.10   ��   ��    k             l     ��  ��    G A set the clipboard to short date string of (current date) as text     � 	 	 �   s e t   t h e   c l i p b o a r d   t o   s h o r t   d a t e   s t r i n g   o f   ( c u r r e n t   d a t e )   a s   t e x t   
  
 l     ��������  ��  ��        l     ����  r         I    ������
�� .misccurdldt    ��� null��  ��    o      ���� 0 currentdate currentDate��  ��        l     ��������  ��  ��        l     ��  ��      Time (24-hour format)     �   ,   T i m e   ( 2 4 - h o u r   f o r m a t )      l    ����  r        n        1   	 ��
�� 
hour  o    	���� 0 currentdate currentDate  o      ���� 0 hournum hourNum��  ��         l   ! !���� ! Z    ! " #�� $ " A     % & % o    ���� 0 hournum hourNum & m    ���� 
 # r     ' ( ' b     ) * ) m     + + � , ,  0 * o    ���� 0 hournum hourNum ( o      ���� 0 hours24  ��   $ r    ! - . - c     / 0 / o    ���� 0 hournum hourNum 0 m    ��
�� 
TEXT . o      ���� 0 hours24  ��  ��      1 2 1 l     ��������  ��  ��   2  3 4 3 l  " ' 5���� 5 r   " ' 6 7 6 n   " % 8 9 8 1   # %��
�� 
min  9 o   " #���� 0 currentdate currentDate 7 o      ���� 0 	minutenum 	minuteNum��  ��   4  : ; : l  ( ; <���� < Z   ( ; = >�� ? = A   ( + @ A @ o   ( )���� 0 	minutenum 	minuteNum A m   ) *���� 
 > r   . 3 B C B b   . 1 D E D m   . / F F � G G  0 E o   / 0���� 0 	minutenum 	minuteNum C 1      ��
�� 
min ��   ? r   6 ; H I H c   6 9 J K J o   6 7���� 0 	minutenum 	minuteNum K m   7 8��
�� 
TEXT I 1      ��
�� 
min ��  ��   ;  L M L l     ��������  ��  ��   M  N O N l  < C P���� P r   < C Q R Q b   < A S T S b   < ? U V U o   < =���� 0 hours24   V m   = > W W � X X  : T 1   ? @��
�� 
min  R o      ���� 0 timeformatted timeFormatted��  ��   O  Y Z Y l     ��������  ��  ��   Z  [ \ [ l     �� ] ^��   ] 
  Day    ^ � _ _    D a y \  ` a ` l  D I b���� b r   D I c d c n   D G e f e 1   E G��
�� 
day  f o   D E���� 0 currentdate currentDate d o      ���� 0 daynum dayNum��  ��   a  g h g l  J a i���� i Z   J a j k�� l j A   J M m n m o   J K���� 0 daynum dayNum n m   K L���� 
 k r   P W o p o b   P S q r q m   P Q s s � t t  0 r o   Q R���� 0 daynum dayNum p o      ���� 0 daystr dayStr��   l r   Z a u v u c   Z ] w x w o   Z [���� 0 daynum dayNum x m   [ \��
�� 
TEXT v o      ���� 0 daystr dayStr��  ��   h  y z y l     ��������  ��  ��   z  { | { l     �� } ~��   }   Month    ~ �      M o n t h |  � � � l  b o ����� � r   b o � � � c   b k � � � n   b g � � � m   c g��
�� 
mnth � o   b c���� 0 currentdate currentDate � m   g j��
�� 
long � o      ���� 0 monthnum monthNum��  ��   �  � � � l  p � ����� � Z   p � � ��� � � A   p u � � � o   p s���� 0 monthnum monthNum � m   s t���� 
 � r   x � � � � b   x  � � � m   x { � � � � �  0 � o   { ~���� 0 monthnum monthNum � o      ���� 0 monthstr monthStr��   � r   � � � � � c   � � � � � o   � ����� 0 monthnum monthNum � m   � ���
�� 
TEXT � o      ���� 0 monthstr monthStr��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Year (last two digits)    � � � � .   Y e a r   ( l a s t   t w o   d i g i t s ) �  � � � l  � � ����� � r   � � � � � c   � � � � � n   � � � � � 1   � ���
�� 
year � o   � ����� 0 currentdate currentDate � m   � ���
�� 
TEXT � o      ���� 0 yearnum yearNum��  ��   �  � � � l  � � ����� � r   � � � � � n   � � � � � 7  � ��� � �
�� 
ctxt � l  � � ����� � \   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
leng � o   � ����� 0 yearnum yearNum��  ��   � m   � ����� ��  ��   � m   � ������� � o   � ����� 0 yearnum yearNum � o      ���� 0 	yearshort 	yearShort��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � #  Weekday (3-letter uppercase)    � � � � :   W e e k d a y   ( 3 - l e t t e r   u p p e r c a s e ) �  � � � l  � � ����� � r   � � � � � c   � � � � � n   � � � � � m   � ���
�� 
wkdy � o   � ����� 0 currentdate currentDate � m   � ���
�� 
TEXT � o      ���� 0 weekdayfull weekdayFull��  ��   �  � � � l  � � ���~ � r   � � � � � c   � � � � � l  � � ��}�| � n   � � � � � 7  � ��{ � �
�{ 
cha  � m   � ��z�z  � m   � ��y�y  � o   � ��x�x 0 weekdayfull weekdayFull�}  �|   � m   � ��w
�w 
TEXT � o      �v�v 0 weekdayabbrev weekdayAbbrev�  �~   �  � � � l  � � ��u�t � r   � � � � � I  � ��s ��r
�s .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � � � � � 
 e c h o   � n   � � � � � 1   � ��q
�q 
strq � o   � ��p�p 0 weekdayabbrev weekdayAbbrev � m   � � � � � � � :   |   t r   ' [ : l o w e r : ] '   ' [ : u p p e r : ] '�r   � o      �o�o 0 weekdayabbrev weekdayAbbrev�u  �t   �  � � � l     �n�m�l�n  �m  �l   �  � � � l     �k � ��k   �   Final format    � � � �    F i n a l   f o r m a t �  � � � l  � ��j�i � r   � � � � b   � � � � b   � � � � b   � � � � b   � � � � b   � � � � b   � � � � � b   � � � � � b   � �   o   � ��h�h 0 timeformatted timeFormatted m   � � �  ,   � o   � ��g�g 0 daystr dayStr � m   � � �  . � o   ��f�f 0 monthstr monthStr � m   �  . � o  
�e�e 0 	yearshort 	yearShort � m   �		  ,   � o  �d�d 0 weekdayabbrev weekdayAbbrev � o      �c�c 0 finalstring finalString�j  �i   � 

 l     �b�a�`�b  �a  �`    l     �_�_     Copy to clipboard    � $   C o p y   t o   c l i p b o a r d  l �^�] I �\�[
�\ .JonspClpnull���     **** o  �Z�Z 0 finalstring finalString�[  �^  �]   �Y l     �X�W�V�X  �W  �V  �Y       �U�T�S�R�Q !"�U   �P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A
�P .aevtoappnull  �   � ****�O 0 currentdate currentDate�N 0 hournum hourNum�M 0 hours24  �L 0 	minutenum 	minuteNum
�K 
min �J 0 timeformatted timeFormatted�I 0 daynum dayNum�H 0 daystr dayStr�G 0 monthnum monthNum�F 0 monthstr monthStr�E 0 yearnum yearNum�D 0 	yearshort 	yearShort�C 0 weekdayfull weekdayFull�B 0 weekdayabbrev weekdayAbbrev�A 0 finalstring finalString �@#�?�>$%�=
�@ .aevtoappnull  �   � ****# k    &&  ''  ((  ))  3**  :++  N,,  `--  g..  �//  �00  �11  �22  �33  �44  �55  �66 �<�<  �?  �>  $  % )�;�:�9�8�7 +�6�5�4�3 F W�2�1�0 s�/�.�-�, ��+�*�)�(�'�&�%�$�#�" ��! �� ��
�; .misccurdldt    ��� null�: 0 currentdate currentDate
�9 
hour�8 0 hournum hourNum�7 
�6 0 hours24  
�5 
TEXT
�4 
min �3 0 	minutenum 	minuteNum�2 0 timeformatted timeFormatted
�1 
day �0 0 daynum dayNum�/ 0 daystr dayStr
�. 
mnth
�- 
long�, 0 monthnum monthNum�+ 0 monthstr monthStr
�* 
year�) 0 yearnum yearNum
�( 
ctxt
�' 
leng�& 0 	yearshort 	yearShort
�% 
wkdy�$ 0 weekdayfull weekdayFull
�# 
cha �" 0 weekdayabbrev weekdayAbbrev
�! 
strq
�  .sysoexecTEXT���     TEXT� 0 finalstring finalString
� .JonspClpnull���     ****�= *j  E�O��,E�O�� 
��%E�Y ��&E�O��,E�O�� 
��%E�Y ��&E�O��%�%E�O��,E�O�� ��%E` Y 	��&E` O�a ,a &E` O_ � a _ %E` Y _ �&E` O�a ,�&E` O_ [a \[Z_ a ,k\Zi2E` O�a ,�&E` O_ [a \[Zk\Zm2�&E` Oa _ a  ,%a !%j "E` O�a #%_ %a $%_ %a %%_ %a &%_ %E` 'O_ 'j ( ldt     �B(��T 	 �77  0 9�S  �88  2 5 �99 
 0 9 : 2 5�R  �::  0 8�Q  �;;  0 5 �<<  2 0 2 5 �==  2 5  �>>  T h u r s d a y! �??  T H U" �@@ ( 0 9 : 2 5 ,   0 8 . 0 5 . 2 5 ,   T H Uascr  ��ޭ