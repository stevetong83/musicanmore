module PagesHelper

	def page_title
		unless @page_title.nil?
			@page_title
		else
			"Music an' More"	
		end
	end

end
