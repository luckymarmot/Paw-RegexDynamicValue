RegexDynamicValue = () ->

    @evaluate = () ->
        regex = new RegExp @regex, 'g'
        if @input
            @input.replace(regex, @replacement)

    @title = () ->
        if @regex and @regex.length > 0
            return @regex
        return "Regexp"

    @text = () ->
        if @input and @input.length > 0
            return "#{@input}"
        return null

    return


RegexDynamicValue.identifier = "com.luckymarmot.PawExtensions.RegexDynamicValue"
RegexDynamicValue.title = "Regex Dynamic Value"
RegexDynamicValue.inputs = [
    DynamicValueInput "regex", "Regex", "String"
    DynamicValueInput "input", "Input", "String"
    DynamicValueInput "replacement", "Replacement", "String"
]

registerDynamicValueClass RegexDynamicValue
