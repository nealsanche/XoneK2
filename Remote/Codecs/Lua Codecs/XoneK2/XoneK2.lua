function remote_init(manufacturer, model)
    items={
        {name="CC 1", input="value",output="value", min=0, max=127},
        {name="CC 2", input="value",output="value", min=0, max=127},
        {name="CC 3", input="value",output="value", min=0, max=127},
        {name="CC 4", input="value",output="value", min=0, max=127},
        {name="CC 5", input="value",output="value", min=0, max=127},
        {name="CC 6", input="value",output="value", min=0, max=127},

        {name="Light 1", output="value", min=0, max=127},
        {name="Light 2", output="value", min=0, max=127},
        {name="Light 3", output="value", min=0, max=127},
        {name="Light 4", output="value", min=0, max=127},

        {name="Select 1", input="value",output="value", min=0, max=127},
        {name="Select 2", input="value",output="value", min=0, max=127},
        {name="Select 3", input="value",output="value", min=0, max=127},
        {name="Select 4", input="value",output="value", min=0, max=127},
        {name="Select 5", input="value",output="value", min=0, max=127},
        {name="Select 6", input="value",output="value", min=0, max=127},

        {name="Rotary 1", input="value",output="value", min=0, max=127},
        {name="Rotary 2", input="value",output="value", min=0, max=127},
        {name="Rotary 3", input="value",output="value", min=0, max=127},
        {name="Rotary 4", input="value",output="value", min=0, max=127},

        {name="Button 1", input="value",output="value", min=0, max=127},
        {name="Button 2", input="value",output="value", min=0, max=127},
        {name="Button 3", input="value",output="value", min=0, max=127},
        {name="Button 4", input="value",output="value", min=0, max=127},

        {name="Rotary 5", input="value",output="value", min=0, max=127},
        {name="Rotary 6", input="value",output="value", min=0, max=127},
        {name="Rotary 7", input="value",output="value", min=0, max=127},
        {name="Rotary 8", input="value",output="value", min=0, max=127},

        {name="Button 5", input="value",output="value", min=0, max=127},
        {name="Button 6", input="value",output="value", min=0, max=127},
        {name="Button 7", input="value",output="value", min=0, max=127},
        {name="Button 8", input="value",output="value", min=0, max=127},


        {name="Rotary 9", input="value",output="value", min=0, max=127},
        {name="Rotary 10", input="value",output="value", min=0, max=127},
        {name="Rotary 11", input="value",output="value", min=0, max=127},
        {name="Rotary 12", input="value",output="value", min=0, max=127},

        {name="Button 9", input="value",output="value", min=0, max=127},
        {name="Button 10", input="value",output="value", min=0, max=127},
        {name="Button 11", input="value",output="value", min=0, max=127},
        {name="Button 12", input="value",output="value", min=0, max=127},

        {name="Fader 1", input="value",output="value", min=0, max=127},
        {name="Fader 2", input="value",output="value", min=0, max=127},
        {name="Fader 3", input="value",output="value", min=0, max=127},
        {name="Fader 4", input="value",output="value", min=0, max=127},

        {name="Button A", input="value",output="value", min=0, max=127},
        {name="Button B", input="value",output="value", min=0, max=127},
        {name="Button C", input="value",output="value", min=0, max=127},
        {name="Button D", input="value",output="value", min=0, max=127},

        {name="Button E", input="value",output="value", min=0, max=127},
        {name="Button F", input="value",output="value", min=0, max=127},
        {name="Button G", input="value",output="value", min=0, max=127},
        {name="Button H", input="value",output="value", min=0, max=127},

        {name="Button I", input="value",output="value", min=0, max=127},
        {name="Button J", input="value",output="value", min=0, max=127},
        {name="Button K", input="value",output="value", min=0, max=127},
        {name="Button L", input="value",output="value", min=0, max=127},

        {name="Button M", input="value",output="value", min=0, max=127},
        {name="Button N", input="value",output="value", min=0, max=127},
        {name="Button O", input="value",output="value", min=0, max=127},
        {name="Button P", input="value",output="value", min=0, max=127},

        {name="Button Layer", input="value",output="value", min=0, max=127},
        {name="Button Exit", input="value",output="value", min=0, max=127},
    }
    remote.define_items(items)

    local inputs={
        {pattern="b? 00 xx", name="CC 1"},
        {pattern="b? 01 xx", name="CC 2"},
        {pattern="b? 02 xx", name="CC 3"},
        {pattern="b? 03 xx", name="CC 4"},
        {pattern="b? 14 xx", name="CC 5"},
        {pattern="b? 15 xx", name="CC 6"},

        {pattern="9? 34 xx", name="Select 1"},
        {pattern="8? 34 xx", name="Select 1"},
        {pattern="9? 35 xx", name="Select 2"},
        {pattern="8? 35 xx", name="Select 2"},
        {pattern="9? 36 xx", name="Select 3"},
        {pattern="8? 36 xx", name="Select 3"},
        {pattern="9? 37 xx", name="Select 4"},
        {pattern="8? 37 xx", name="Select 4"},
        {pattern="9? 0d xx", name="Select 5"},
        {pattern="8? 0d xx", name="Select 5"},
        {pattern="9? 0e xx", name="Select 6"},
        {pattern="8? 0e xx", name="Select 6"},

        {pattern="b? 04 xx", name="Rotary 1"},
        {pattern="b? 05 xx", name="Rotary 2"},
        {pattern="b? 06 xx", name="Rotary 3"},
        {pattern="b? 07 xx", name="Rotary 4"},

        {pattern="b? 08 xx", name="Rotary 5"},
        {pattern="b? 09 xx", name="Rotary 6"},
        {pattern="b? 0a xx", name="Rotary 7"},
        {pattern="b? 0b xx", name="Rotary 8"},

        {pattern="b? 0c xx", name="Rotary 9"},
        {pattern="b? 0d xx", name="Rotary 10"},
        {pattern="b? 0e xx", name="Rotary 11"},
        {pattern="b? 0f xx", name="Rotary 12"},

        {pattern="9? 30 xx", name="Button 1"},
        {pattern="8? 30 xx", name="Button 1"},
        {pattern="9? 31 xx", name="Button 2"},
        {pattern="8? 31 xx", name="Button 2"},
        {pattern="9? 32 xx", name="Button 3"},
        {pattern="8? 32 xx", name="Button 3"},
        {pattern="9? 33 xx", name="Button 4"},
        {pattern="8? 33 xx", name="Button 4"},

        {pattern="9? 2c xx", name="Button 5"},
        {pattern="8? 2c xx", name="Button 5"},
        {pattern="9? 2d xx", name="Button 6"},
        {pattern="8? 2d xx", name="Button 6"},
        {pattern="9? 2e xx", name="Button 7"},
        {pattern="8? 2e xx", name="Button 7"},
        {pattern="9? 2f xx", name="Button 8"},
        {pattern="8? 2f xx", name="Button 8"},

        {pattern="9? 28 xx", name="Button 9"},
        {pattern="8? 28 xx", name="Button 9"},
        {pattern="9? 29 xx", name="Button 10"},
        {pattern="8? 29 xx", name="Button 10"},
        {pattern="9? 2a xx", name="Button 11"},
        {pattern="8? 2a xx", name="Button 11"},
        {pattern="9? 2b xx", name="Button 12"},
        {pattern="8? 2b xx", name="Button 12"},

        {pattern="b? 10 xx", name="Fader 1"},
        {pattern="b? 11 xx", name="Fader 2"},
        {pattern="b? 12 xx", name="Fader 3"},
        {pattern="b? 13 xx", name="Fader 4"},

        {pattern="9? 24 xx", name="Button A"},
        {pattern="8? 24 xx", name="Button A"},
        {pattern="9? 25 xx", name="Button B"},
        {pattern="8? 25 xx", name="Button B"},
        {pattern="9? 26 xx", name="Button C"},
        {pattern="8? 26 xx", name="Button C"},
        {pattern="9? 27 xx", name="Button D"},
        {pattern="8? 27 xx", name="Button D"},

        {pattern="9? 20 xx", name="Button E"},
        {pattern="8? 20 xx", name="Button E"},
        {pattern="9? 21 xx", name="Button F"},
        {pattern="8? 21 xx", name="Button F"},
        {pattern="9? 22 xx", name="Button G"},
        {pattern="8? 22 xx", name="Button G"},
        {pattern="9? 23 xx", name="Button H"},
        {pattern="8? 23 xx", name="Button H"},

        {pattern="9? 1c xx", name="Button I"},
        {pattern="8? 1c xx", name="Button I"},
        {pattern="9? 1d xx", name="Button J"},
        {pattern="8? 1d xx", name="Button J"},
        {pattern="9? 1e xx", name="Button K"},
        {pattern="8? 1e xx", name="Button K"},
        {pattern="9? 1f xx", name="Button L"},
        {pattern="8? 1f xx", name="Button L"},

        {pattern="9? 18 xx", name="Button M"},
        {pattern="8? 18 xx", name="Button M"},
        {pattern="9? 19 xx", name="Button N"},
        {pattern="8? 19 xx", name="Button N"},
        {pattern="9? 1a xx", name="Button O"},
        {pattern="8? 1a xx", name="Button O"},
        {pattern="9? 1b xx", name="Button P"},
        {pattern="8? 1b xx", name="Button P"},

        {pattern="9? 0c xx", name="Button Layer"},
        {pattern="8? 0c xx", name="Button Layer"},

        {pattern="9? 0f xx", name="Button Exit"},
        {pattern="8? 0f xx", name="Button Exit"},

    }
    remote.define_auto_inputs(inputs)

    local outputs={

        {pattern="9e 34 xx", name="Light 1"},
        {pattern="9e 35 xx", name="Light 2"},
        {pattern="9e 36 xx", name="Light 3"},
        {pattern="9e 37 xx", name="Light 4"},

        {pattern="9e 30 xx", name="Button 1"},
        {pattern="9e 31 xx", name="Button 2"},
        {pattern="9e 32 xx", name="Button 3"},
        {pattern="9e 33 xx", name="Button 4"},

        {pattern="9e 2c xx", name="Button 5"},
        {pattern="9e 2d xx", name="Button 6"},
        {pattern="9e 2e xx", name="Button 7"},
        {pattern="9e 2f xx", name="Button 8"},

        {pattern="9e 28 xx", name="Button 9"},
        {pattern="9e 29 xx", name="Button 10"},
        {pattern="9e 2a xx", name="Button 11"},
        {pattern="9e 2b xx", name="Button 12"},

        {pattern="9e 24 xx", name="Button A"},
        {pattern="9e 25 xx", name="Button B"},
        {pattern="9e 26 xx", name="Button C"},
        {pattern="9e 27 xx", name="Button D"},

        {pattern="9e 20 xx", name="Button E"},
        {pattern="9e 21 xx", name="Button F"},
        {pattern="9e 22 xx", name="Button G"},
        {pattern="9e 23 xx", name="Button H"},

        {pattern="9e 1c xx", name="Button I"},
        {pattern="9e 1d xx", name="Button J"},
        {pattern="9e 1e xx", name="Button K"},
        {pattern="9e 1f xx", name="Button L"},

        {pattern="9e 18 xx", name="Button M"},
        {pattern="9e 19 xx", name="Button N"},
        {pattern="9e 1a xx", name="Button O"},
        {pattern="9e 1b xx", name="Button P"},

        {pattern="9e 0c xx", name="Button Layer"},

        {pattern="9e 0f xx", name="Button Exit"},
    }
    remote.define_auto_outputs(outputs)
end
