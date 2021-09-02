# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all

Product.create!(
	title: "MEN'S Versace & Fitch BOXER TRUNK SHORTS UNDERWEAR 100% Cotton Boxer Briefs 3 IN A PACK",
	description: %{
		<p>
			<em>Responsive, Intuitive Interfaces with ruby</em>
			RedKite is a global lifestyle brand that exemplifies bold, progressive ideals and a seductive, and often minimal, aesthetic. We seek to thrill and inspire our audience while using provocative imagery and striking designs to ignite the senses.Founded in 2018 by a group of young entrepreneurs, we have built our reputation as a leader in American & Bangladeshi fashion through our clean aesthetic and innovative designs. Global retail sales of brand products exceeded 54% in 2020 and were distributed in over 23 countries.
		</p>
	},
	image_url: dpchat.jpg,
	price: 20.00
)