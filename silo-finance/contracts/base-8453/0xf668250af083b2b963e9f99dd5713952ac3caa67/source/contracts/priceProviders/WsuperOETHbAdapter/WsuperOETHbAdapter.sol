// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.13;

import "../../interfaces/IPriceProvidersRepository.sol";
import "../api3/interfaces/IAggregatorV3Like.sol";

interface IERC4626Like {
    /// @dev ERC4626 function to convert shares to assets.
    function convertToAssets(uint256 shares) external view returns (uint256);
}

/// @title WsuperOETHbAdapter
/// @notice WsuperOETHbAdapter is a wrapper for the wsuperOETHbA to superOETHb exchange rate to make it compatible
/// with ChainlinkV3PriceProvider.
/// @custom:security-contact security@silo.finance
contract WsuperOETHbAdapter is IAggregatorV3Like {
    /// @dev used for the sample assets amount and for the price decimals.
    uint8 public constant override decimals = 18; // solhint-disable-line const-name-snakecase
    /// @dev wsuperOETHb address, which is a ERC4626 vault.
    IERC4626Like public constant VAULT = IERC4626Like(0x7FcD174E80f264448ebeE8c88a7C4476AAF58Ea6);
    
    /// @inheritdoc IAggregatorV3Like
    function latestRoundData() 
        external
        view
        virtual
        override
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        // The vault does not have the offset in shares-to-assets ratio. The following call will preview conversion
        // of 1 wsuperOETHb to the underlying asset.
        answer = int256(VAULT.convertToAssets(10 ** decimals));
        
        // The following variables are set for compatibility with Chainlink price feeds. These variables are not
        // used by ChainlinkV3PriceProvider
        roundId = 1;
        answeredInRound = roundId;
        updatedAt = block.timestamp;
        startedAt = updatedAt;
    }
}
