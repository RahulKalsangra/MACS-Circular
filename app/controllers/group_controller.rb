class GroupController < ApplicationController
	
  def group_home
  	grp_name=params[:g_name]
  	b=Group.new
  	if grp_name!=''
  		b.group_name=grp_name
  		b.save
  	end
  	a=params[:fields]  	
  	if a
  		i=0
	  	for x in a              
	  		k=GroupDatum.new
		  	k.group_name_ref=grp_name
	  		k.email=x
	  		k.save

	  	end
	end
  end
end
