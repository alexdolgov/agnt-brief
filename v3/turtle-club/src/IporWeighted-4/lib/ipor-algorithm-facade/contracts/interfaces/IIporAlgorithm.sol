// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.26;

/// @title Interface for interaction with IPOR calculation algorithm.
interface IIporAlgorithm {
    /// @notice Returns current version of IPOR algorithm.
    /// @return Current IPOR algorithm version.
    function getVersion() external pure returns (uint256);

    /// @notice Calculates IPOR index by given asset address
    /// @param asset Asset address
    /// @return iporIndex IPOR index value represented in 18 decimals
    function calculateIpor(address asset) external view returns (uint256 iporIndex);

    struct ConnectorData {
        address asset;
        address protocolToken;
        address dataProvider;
        uint256 connector;
        uint256 version;
        uint256 startDate;
        uint256 endDate;
        uint256 fadeChange;
    }

    struct InitConnectorData {
        uint256 startDate;
        uint256 endDate;
        uint256 fadeChange;
    }

    struct InitData {
        InitConnectorData daiAaveV2Input;
        InitConnectorData usdcAaveV2Input;
        InitConnectorData usdtAaveV2Input;
        InitConnectorData wethAaveV2Input;
        InitConnectorData daiAaveV3Input;
        InitConnectorData usdcAaveV3Input;
        InitConnectorData usdtAaveV3Input;
        InitConnectorData wethAaveV3Input;
        InitConnectorData daiCompoundV2Input;
        InitConnectorData usdcCompoundV2Input;
        InitConnectorData usdtCompoundV2Input;
        InitConnectorData wethCompoundV2Input;
        InitConnectorData usdcCompoundV3Input;
        InitConnectorData wethCompoundV3Input;
    }

    error GeneralError(string message);
}
