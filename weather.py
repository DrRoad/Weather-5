def input_temp():
    temperature = raw_input('Enter temperature: ')
    return temperature

## Start talking to Tehilla
print 'Good morning Tehilla.'
print 'We love you! and want to make sure you are comfortable with the weather'


temperature = input_temp()


if not temperature:
    print 'You MUST enter a temperature'
    temperature = input_temp()

try:
    temperature = int(temperature)
except:
    print 'The temperature you entered is not a number. Please enter a new one.'
    temperature = input_temp()

else:
    if temperature < 0 or temperature > 100:
        print 'The temperature you entered does not make sense. Please enter a new one.'
        temperature = input_temp()

temperature_num = int(temperature)


if  0 <= temperature_num < 40:
    print "Today's clothing should include: \n **Tights or Leggings \n **Long Sleeves \n **Winter Coat \n **Scarf \n **Gloves \n **Hat"
elif 40 <= temperature_num <= 55:
    print "Today's clothing should include: \n **Tights or Leggings \n **Long Sleeves \n **Winter Coat"
elif 56 <= temperature_num <= 65:
    print "Today's clothing should include: \n **Leggings \n **Long Sleeves \n **Lightweight Coat"
elif 66 <= temperature_num <= 77:
    print "Today's clothing should include: \n **Long Sleeves \n **Sweater"
elif 78 <= temperature_num <= 100:
    print "Today's clothing should include: \n **Short Sleeves"
    print ":) !!! YAY It's summertime!"


