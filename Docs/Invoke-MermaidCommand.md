---
external help file: PsDockerMermaid-help.xml
Module Name: PsDockerMermaid
online version:
schema: 2.0.0
---

# Invoke-MermaidCommand

## SYNOPSIS
Execute mmdc command.

## SYNTAX

```
Invoke-MermaidCommand [-InputString] <String> [[-Type] <String>] [<CommonParameters>]
```

## DESCRIPTION
Converts a mermaid diagram (mmd) from text into graphic (e.g.
svg).

## EXAMPLES

### EXAMPLE 1
```
@"
>> graph TD
>>     A[Client] --> B[Load Balancer]
>> "@ | Invoke-MermaidCommand
```

\<svg id="mermaid-1639919827409" width="100%" xmlns="http://www.w3.org/2000/svg" ...

## PARAMETERS

### -InputString
Specifies the mermaid diagram definition as string.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Type
Specifies the output type.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: Svg
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
