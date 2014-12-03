#!/usr/bin/env mscript
InputStreamReader cin = new InputStreamReader(System.in);
StringBuilder sb=new StringBuilder();
BufferedReader br = new BufferedReader(cin);
String read = br.readLine();
disp(read);

%disp(stdin);
%fopen('all');
%fid = fopen(stdin, 'r');

%tline = fgets(stdin);
%while ischar(tline)
%    disp(tline)
%    tline = fgets(fid);
%end
%
%fclose(fid);
