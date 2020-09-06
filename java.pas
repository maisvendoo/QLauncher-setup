var 
	java_page : TWizardPage;
	java_checkbox : TNewCheckBox;

procedure create_java_setup();
begin

	java_page := CreateCustomPage(wpSelectTasks, 'Установка Java 8', 'Установка Java runtime-библиотек на ваш компьютер');

	java_checkbox := TNewCheckBox.Create(java_page);
	
	with java_checkbox do
	begin
		
		Parent := java_page.Surface;
		Width := 300;
  		Caption := 'Установить Java 8 на этот компьютер';
  		Checked := true;

	end;


end;
