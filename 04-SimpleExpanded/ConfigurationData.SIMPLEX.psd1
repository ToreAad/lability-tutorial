@{
    AllNodes = @(
        @{
            NodeName                    = 'CLIENT1';
            Role                        = 'CLIENT';
            InterfaceAlias              = 'Ethernet';
            AddressFamily               = 'IPv4';
            Lability_SwitchName         = "Wifi-HyperV-VSwitch";
            Lability_Media              = 'WIN10_x64_Enterprise_EN_Eval';
            Lability_ProcessorCount     = 1;
            Lability_StartupMemory      = 2GB;
            Lability_Resource           = @('Firefox')
            PSDscAllowPlainTextPassword = $true;
        }
    );
    NonNodeData = @{
        Lability = @{
            EnvironmentPrefix = 'SIMPLEX-';
            DSCResource = @(
                @{ Name = 'xComputerManagement'; RequiredVersion = '4.1.0.0'; }
                @{ Name = 'xNetworking'; RequiredVersion = '5.7.0.0'; }
            );
            Resource = @(
                @{
                    Id = 'Firefox';
                    Filename = 'Firefox-Latest.exe';
                    Uri = 'https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=en-US';
                }
            )
        };
    };
};
