# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

    puts "Creating Blank Photos..."
    3.times do |i|
      Photo.create!(
        name: "Blank-Photo#{i}",
        photo: File.open("#{Rails.root}/public/images/blank-image.png"),
        project_id: i
      )
    end

    puts "Creating Projects..."
    Project.create!([
        {
          title: "Sweat X",
          subtitle: "Get's the Sweat Out",
          description: "Lorem ipsum dolor sit amet, postea propriae corrumpit has ne, causae epicuri vel at. Cu nibh vivendum nam, ex populo antiopam duo. Suscipit rationibus intellegam sed ne, justo denique vis eu, eu option incorrupte voluptatibus nam. Soluta veritus moderatius id vim. Vim agam epicurei hendrerit ne. Et electram imperdiet ullamcorper est, ne ullum sonet civibus mel. Noster iracundia disputando at mei. Eum facer inermis maiorum ex, liber sadipscing eos no, sea id magna cetero. Mei sensibus petentium consectetuer ex, an mel semper legendos. Agam soluta cu sed, et vim constituto contentiones. An eum veri utroque singulis, pro aeque laudem petentium no, cu blandit lobortis sit. Eam alii graeci evertitur no, primis quidam evertitur ex eos.Ut possit torquatos pro, usu hinc delectus disputationi ex. Eros euismod in sed, vis facer latine ne. Tantas lobortis ius ne, sed assentior deterruisset at. Nonumes efficiantur pri at.An his tibique expetenda. At sale illum salutatus nam, ius at aperiri oblique intellegat, te sint partem perfecto ius. Ius ea libris qualisque, ei oblique nostrud quo. Case eripuit disputando in sea. Mel dolorem consequuntur at, ornatus deleniti quaestio et has.Ut vocibus facilisis salutatus eos. An error appareat nec. In atqui albucius pri, quo an scaevola adipisci praesent, mutat molestie noluisse in per. Mei ei causae erroribus, sed id brute scriptorem reformidans, mel impedit pertinacia id. Probatus pertinax corrumpit pro ea.",
          category: "Automotive",
          photos: [Photo.find(1)]
        },
        {
          title: "Presto Pro Pen",
          subtitle: "Get's the scratches out",
          description: "Lorem ipsum dolor sit amet, postea propriae corrumpit has ne, causae epicuri vel at. Cu nibh vivendum nam, ex populo antiopam duo. Suscipit rationibus intellegam sed ne, justo denique vis eu, eu option incorrupte voluptatibus nam. Soluta veritus moderatius id vim. Vim agam epicurei hendrerit ne. Et electram imperdiet ullamcorper est, ne ullum sonet civibus mel. Noster iracundia disputando at mei. Eum facer inermis maiorum ex, liber sadipscing eos no, sea id magna cetero. Mei sensibus petentium consectetuer ex, an mel semper legendos. Agam soluta cu sed, et vim constituto contentiones. An eum veri utroque singulis, pro aeque laudem petentium no, cu blandit lobortis sit. Eam alii graeci evertitur no, primis quidam evertitur ex eos.Ut possit torquatos pro, usu hinc delectus disputationi ex. Eros euismod in sed, vis facer latine ne. Tantas lobortis ius ne, sed assentior deterruisset at. Nonumes efficiantur pri at.An his tibique expetenda. At sale illum salutatus nam, ius at aperiri oblique intellegat, te sint partem perfecto ius. Ius ea libris qualisque, ei oblique nostrud quo. Case eripuit disputando in sea. Mel dolorem consequuntur at, ornatus deleniti quaestio et has.Ut vocibus facilisis salutatus eos. An error appareat nec. In atqui albucius pri, quo an scaevola adipisci praesent, mutat molestie noluisse in per. Mei ei causae erroribus, sed id brute scriptorem reformidans, mel impedit pertinacia id. Probatus pertinax corrumpit pro ea.",
          category: "Automotive",
          photos: [Photo.find(2)]
        },
        {
          title: "Water Tectonics",
          subtitle: "The latest breakthrough in water filtration",
          description: "Lorem ipsum dolor sit amet, postea propriae corrumpit has ne, causae epicuri vel at. Cu nibh vivendum nam, ex populo antiopam duo. Suscipit rationibus intellegam sed ne, justo denique vis eu, eu option incorrupte voluptatibus nam. Soluta veritus moderatius id vim. Vim agam epicurei hendrerit ne. Et electram imperdiet ullamcorper est, ne ullum sonet civibus mel. Noster iracundia disputando at mei. Eum facer inermis maiorum ex, liber sadipscing eos no, sea id magna cetero. Mei sensibus petentium consectetuer ex, an mel semper legendos. Agam soluta cu sed, et vim constituto contentiones. An eum veri utroque singulis, pro aeque laudem petentium no, cu blandit lobortis sit. Eam alii graeci evertitur no, primis quidam evertitur ex eos.Ut possit torquatos pro, usu hinc delectus disputationi ex. Eros euismod in sed, vis facer latine ne. Tantas lobortis ius ne, sed assentior deterruisset at. Nonumes efficiantur pri at.An his tibique expetenda. At sale illum salutatus nam, ius at aperiri oblique intellegat, te sint partem perfecto ius. Ius ea libris qualisque, ei oblique nostrud quo. Case eripuit disputando in sea. Mel dolorem consequuntur at, ornatus deleniti quaestio et has.Ut vocibus facilisis salutatus eos. An error appareat nec. In atqui albucius pri, quo an scaevola adipisci praesent, mutat molestie noluisse in per. Mei ei causae erroribus, sed id brute scriptorem reformidans, mel impedit pertinacia id. Probatus pertinax corrumpit pro ea.",
          category: "Energy",
          photos: [Photo.find(3)]
        }
    ])

    puts "Creating Categories..."
    Category.create([
        {name: "Automotive"},
        {name: "Energy"},
        {name: "Medical"},
        {name: "Industrial"}
    ])

    puts "Creating Team Members"
    TeamMember.create([
        {
          name: "Guy Sherker",
          title: "President",
          photo: File.open("#{Rails.root}/public/images/blank-image.png"),
          facebook: "https://facebook.com",
          linkedin: "https://linkedin.com"
        },
        {
          name: "Kikki Powers",
          title: "Director of Ops",
          photo: File.open("#{Rails.root}/public/images/blank-image.png"),
          facebook: "https://facebook.com",
          linkedin: "https://linkedin.com"
        },
        {
          name: "Hymie Yomson",
          title: "Sourcing Agent",
          photo: File.open("#{Rails.root}/public/images/blank-image.png"),
          facebook: "https://facebook.com",
          linkedin: "https://linkedin.com"
        },
        {
          name: "Peg Gamer",
          title: "Sales Manager",
          photo: File.open("#{Rails.root}/public/images/blank-image.png"),
          facebook: "https://facebook.com",
          linkedin: "https://linkedin.com"
        }
    ])

    puts "Creating Admin..."
    User.create! email: 'test@test.com',
                  password: 'password',
                  password_confirmation: 'password',
                  admin: true
