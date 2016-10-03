class ShowPdf < Prawn::Document
	def initialize(contact)
		super(top_margin: 70)
		@contact = contact
		contact_name
		contact_phone
		contact_email
	end

	def contact_name
		text "\##{@contact.name}", size: 30, style: :bold
	end

	def contact_phone
		move_down 20
		text "#{@contact.phone}", size: 20
	end

	def contact_email
		move_down 5
		text "#{@contact.email}", size: 20
	end
end