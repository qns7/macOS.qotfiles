FasdUAS 1.101.10   ��   ��    k             l     ��  ��    0 * set unshortenedURL to (get the clipboard)     � 	 	 T   s e t   u n s h o r t e n e d U R L   t o   ( g e t   t h e   c l i p b o a r d )   
  
 l     ��  ��    { u set shortenedURL to (do shell script "curl --url \"https://tinyurl.com/api-create.php?url=" & unshortenedURL & "\"")     �   �   s e t   s h o r t e n e d U R L   t o   ( d o   s h e l l   s c r i p t   " c u r l   - - u r l   \ " h t t p s : / / t i n y u r l . c o m / a p i - c r e a t e . p h p ? u r l = "   &   u n s h o r t e n e d U R L   &   " \ " " )      l     ��  ��    ( " set the clipboard to shortenedURL     �   D   s e t   t h e   c l i p b o a r d   t o   s h o r t e n e d U R L      l     ��������  ��  ��        l     ����  r         l     ����  e        I    ������
�� .JonsgClp****    ��� null��  ��  ��  ��    o      ����  0 unshortenedurl unshortenedURL��  ��        l     ��������  ��  ��         l     �� ! "��   ! N H Regex-like URL check using offset (primitive but works for common URLs)    " � # # �   R e g e x - l i k e   U R L   c h e c k   u s i n g   o f f s e t   ( p r i m i t i v e   b u t   w o r k s   f o r   c o m m o n   U R L s )    $ % $ l   7 &���� & Z    7 ' (���� ' G     ) * ) C     + , + o    	����  0 unshortenedurl unshortenedURL , m   	 
 - - � . .  h t t p : / / * C     / 0 / o    ����  0 unshortenedurl unshortenedURL 0 m     1 1 � 2 2  h t t p s : / / ( Q    3 3 4�� 3 k    * 5 5  6 7 6 r    $ 8 9 8 l   " :���� : I   "�� ;��
�� .sysoexecTEXT���     TEXT ; b     < = < b     > ? > m     @ @ � A A f c u r l   - - u r l   " h t t p s : / / t i n y u r l . c o m / a p i - c r e a t e . p h p ? u r l = ? o    ����  0 unshortenedurl unshortenedURL = m     B B � C C  "��  ��  ��   9 o      ���� 0 shortenedurl shortenedURL 7  D�� D I  % *�� E��
�� .JonspClpnull���     **** E o   % &���� 0 shortenedurl shortenedURL��  ��   4 R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��  ��   %  F G F l     �� H I��   H L F If clipboard doesn't start with http(s), do nothing and exit silently    I � J J �   I f   c l i p b o a r d   d o e s n ' t   s t a r t   w i t h   h t t p ( s ) ,   d o   n o t h i n g   a n d   e x i t   s i l e n t l y G  K L K l     ��������  ��  ��   L  M�� M l     ��������  ��  ��  ��       �� N O P Q����   N ��������
�� .aevtoappnull  �   � ****��  0 unshortenedurl unshortenedURL�� 0 shortenedurl shortenedURL��   O �� R���� S T��
�� .aevtoappnull  �   � **** R k     7 U U   V V  $����  ��  ��   S   T ���� - 1�� @ B����������
�� .JonsgClp****    ��� null��  0 unshortenedurl unshortenedURL
�� 
bool
�� .sysoexecTEXT���     TEXT�� 0 shortenedurl shortenedURL
�� .JonspClpnull���     ****��  ��  �� 8*j  E�O��
 ���& " ��%�%j E�O�j 	W X 
 hY h P � W W 8 h t t p s : / / t i n y u r l . c o m / 2 5 w b w 9 v n Q � X X 
 E r r o r��  ascr  ��ޭ