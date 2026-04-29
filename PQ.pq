// This file contains your Data Connector logic
[Version = "1.0.0"]
section PQ;

[DataSource.Kind="PQ", Publish="{{ProjectName}}.Publish"]
shared PQ.Contents = (optional message as text) =>
    let
        _message = if (message <> null) then message else "(no message)",
        a = "Hello from PQ: " & _message
    in
        a;

// Data Source Kind description
PQ = [
    Authentication = [
        // Key = [],
        // UsernamePassword = [],
        // Windows = [],
        Anonymous = []
    ]
];

// Data Source UI publishing description
PQ.Publish = [
    Beta = true,
    Category = "Other",
    ButtonText = { Extension.LoadString("ButtonTitle"), Extension.LoadString("ButtonHelp") },
    LearnMoreUrl = "https://powerbi.microsoft.com/",
    SourceImage = PQ.Icons,
    SourceTypeImage = PQ.Icons
];

PQ.Icons = [
    Icon16 = { Extension.Contents("PQ16.png"), Extension.Contents("PQ20.png"), Extension.Contents("PQ24.png"), Extension.Contents("PQ32.png") },
    Icon32 = { Extension.Contents("PQ32.png"), Extension.Contents("PQ40.png"), Extension.Contents("PQ48.png"), Extension.Contents("PQ64.png") }
];
