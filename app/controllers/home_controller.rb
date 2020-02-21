class HomeController < ApplicationController
	
	def index
	end
	
	
	def result
  	end
	
	def map
	end
	
	def bank_info
		
		if params[:query].nil?
    		@each_bank = Bank.find(params[:id])
			@number_bank = @each_bank.rank.to_i
			@bank = Bank.all
			@bank_order = @bank.group(:bank).order("rank")
    	else
			@bank = Bank.all
			@bank_order = @bank.group(:bank).order("rank")
    		@queryname = params[:query]     # 검색어 입력되면, 출력하려고 변수에 저장
			@only_bank = Bank.all.where("bank LIKE ? OR bank LIKE ?", "%#{params[:query]}%", "%#{params[:query]}저축은행%")  
    	end
	end
	
	def create
		@guestinfo = Guest.new
		@guestinfo.price1 = params[:price1]
		@guestinfo.price2 = params[:price2]
		@guestinfo.price3 = params[:price3]
		@guestinfo.price4 = params[:price4]
		@guestinfo.money = params[:money]
		@guestinfo.sex = params[:sex]
		@guestinfo.region = params[:region]
		@guestinfo.birthday = params[:birthday]
		@guestinfo.contactOptions = params[:contactOptions]
	
		@guestinfo.save!
		redirect_to "/final_page"
	end
	
	def final_page
		@bank = Bank.all
		# 은행명 중복 제거 순위 나열
		@bank_order = @bank.group(:bank).order("rank")
		
        @person = Guest.last
		if @person.contactOptions == true
            	@contact = "대면"
            else
                @contact = "비대면"
    
		end
		if @person.sex == true
            	@sex = "남성"
            else
                @sex = "여성"
		end
		
		if @person.price1.present?
			@rate = @person.price1
		elsif @person.price2.present?	
			@rate = @person.price2
		elsif @person.price3.present?	
			@rate = @person.price3
		elsif @person.price4.present?	
			@rate = @person.price4
		end	
			
		if @contact == "대면"
			@contact_item = @bank.where.not("name LIKE ? OR name LIKE ? OR name LIKE ? OR name LIKE ? OR name LIKE ?", "%인터넷%", "%e%", "%모바일%", "%비대면%", "%m%")
			@filtering_region = @contact_item.where("region1 LIKE ? OR region2 LIKE ? OR region3 LIKE ? OR region4 LIKE ? OR region5 LIKE ? OR region6 LIKE ?", "%#{@person.region}%", "%#{@person.region}%", "%#{@person.region}%", "%#{@person.region}%", "%#{@person.region}%", "%#{@person.region}%")
		else
			@contact_item = @bank.where("name LIKE ? OR name LIKE ? OR name LIKE ? OR name LIKE ? OR name LIKE ?", "%인터넷%", "%e%", "%모바일%", "%비대면%", "%m%")
			@filtering_region = @contact_item.where("region1 LIKE ? OR region2 LIKE ? OR region3 LIKE ? OR region4 LIKE ? OR region5 LIKE ? OR region6 LIKE ?", "%#{@person.region}%", "%#{@person.region}%", "%#{@person.region}%", "%#{@person.region}%", "%#{@person.region}%", "%#{@person.region}%")
		end
		
		
		@top_rates = Array.new
		@top_name = Array.new
		@top_bank = Array.new
		@top_rank = Array.new
		@top_url = Array.new
		@top_id = Array.new
		
		@top_rates2 = Array.new
		@top_name2 = Array.new
		@top_bank2 = Array.new
		@top_rank2 = Array.new
		@top_url2 = Array.new
		@top_id2 = Array.new
		
		@top_rates3 = Array.new
		@top_name3 = Array.new
		@top_bank3 = Array.new
		@top_rank3 = Array.new
		@top_url3 = Array.new
		@top_id3 = Array.new
		
		@top_rates4 = Array.new
		@top_name4 = Array.new
		@top_bank4 = Array.new
		@top_rank4 = Array.new
		@top_url4 = Array.new
		@top_id4 = Array.new
		
		@filtering_region.group(:bank).order("rank").limit(@bank.count).each do |x|
			if (x.rank >= 1 and x.rank <= 17)
				if @person.price1 == 6
					@top_rates << x.price1
					@top_name << x.name
					@top_bank << x.bank
					@top_rank << x.rank
					@top_url << x.url
					@top_id << x.id
					
				elsif @person.price2 == 12
					@top_rates << x.price2
					@top_name << x.name
					@top_bank << x.bank
					@top_rank << x.rank
					@top_url << x.url
					@top_id << x.id
				
				elsif @person.price3 == 24
					@top_rates << x.price3
					@top_name << x.name
					@top_bank << x.bank
					@top_rank << x.rank
					@top_url << x.url
					@top_id << x.id
					
				elsif @person.price4 == 36
					@top_rates << x.price4
					@top_name << x.name
					@top_bank << x.bank
					@top_rank << x.rank
					@top_url << x.url
					@top_id << x.id
				end
				
			elsif (x.rank > 17 and x.rank <= 40)
				if @person.price1 == 6
					@top_rates2 << x.price1
					@top_name2 << x.name
					@top_bank2 << x.bank
					@top_rank2 << x.rank
					@top_url2 << x.url
					@top_id2 << x.id
					 
				elsif @person.price2 == 12
					@top_rates2 << x.price2
					@top_name2 << x.name
					@top_bank2 << x.bank
					@top_rank2 << x.rank
					@top_url2 << x.url
					@top_id2 << x.id
				
				elsif @person.price3 == 24
					@top_rates2 << x.price3
					@top_name2 << x.name
					@top_bank2 << x.bank
					@top_rank2 << x.rank
					@top_url2 << x.url
					@top_id2 << x.id
				
				elsif @person.price4 == 36
					@top_rates2 << x.price4
					@top_name2 << x.name
					@top_bank2 << x.bank
					@top_rank2 << x.rank
					@top_url2 << x.url
					@top_id2 << x.id
				end
				
			elsif (x.rank > 40 and x.rank <= 71)
				if @person.price1 == 6
					@top_rates3 << x.price1
					@top_name3 << x.name
					@top_bank3 << x.bank
					@top_rank3 << x.rank
					@top_url3 << x.url
					@top_id3 << x.id
					
				elsif @person.price2 == 12
					@top_rates3 << x.price2
					@top_name3 << x.name
					@top_bank3 << x.bank
					@top_rank3 << x.rank
					@top_url3 << x.url
					@top_id3 << x.id
				
				elsif @person.price3 == 24
					@top_rates3 << x.price3
					@top_name3 << x.name
					@top_bank3 << x.bank
					@top_rank3 << x.rank
					@top_url3 << x.url
					@top_id3 << x.id
					
				elsif @person.price4 == 36
					@top_rates3 << x.price4
					@top_name3 << x.name
					@top_bank3 << x.bank
					@top_rank3 << x.rank
					@top_url3 << x.url
					@top_id3 << x.id
				end
				
			elsif (x.rank > 71 and x.rank <= 79)
				if @person.price1 == 6
					@top_rates4 << x.price1
					@top_name4 << x.name
					@top_bank4 << x.bank
					@top_rank4 << x.rank
					@top_url4 << x.url
					@top_id4 << x.id
					
				elsif @person.price2 == 12
					@top_rates4 << x.price2
					@top_name4 << x.name
					@top_bank4 << x.bank
					@top_rank4 << x.rank
					@top_url4 << x.url
					@top_id4 << x.id
				
				elsif @person.price3 == 24
					@top_rates4 << x.price3
					@top_name4 << x.name
					@top_bank4 << x.bank
					@top_rank4 << x.rank
					@top_url4 << x.url
					@top_id4 << x.id
				
				elsif @person.price4 == 36
					@top_rates4 << x.price4
					@top_name4 << x.name
					@top_bank4 << x.bank
					@top_rank4 << x.rank
					@top_url4 << x.url
					@top_id4 << x.id
				end
			end	
		end
		
	# final_page def	
	end	
	
end
		