var 
	java_page : TWizardPage;
	java_checkbox : TNewCheckBox;

procedure create_java_setup();
begin

	java_page := CreateCustomPage(wpSelectTasks, '��������� Java 8', '��������� Java runtime-��������� �� ��� ���������');

	java_checkbox := TNewCheckBox.Create(java_page);
	
	with java_checkbox do
	begin
		
		Parent := java_page.Surface;
		Width := 300;
  		Caption := '���������� Java 8 �� ���� ���������';
  		Checked := true;

	end;


end;
