// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/* solhint-disable var-name-mixedcase  */

interface IBTCDMintingEvents {
    /// @notice Event emitted when BTCD is minted
    event Mint(
        string indexed order_id,
        address indexed benefactor,
        address indexed beneficiary,
        address minter,
        address collateral_asset,
        uint256 collateral_amount,
        uint256 btcd_amount
    );

    /// @notice Event emitted when funds are redeemed
    event Redeem(
        string indexed order_id,
        address indexed benefactor,
        address indexed beneficiary,
        address redeemer,
        address collateral_asset,
        uint256 collateral_amount,
        uint256 btcd_amount
    );

    /// @notice Event emitted when a supported asset is added
    event AssetAdded(address indexed asset);

    /// @notice Event emitted when a supported asset is removed
    event AssetRemoved(address indexed asset);

    /// @notice Event emitted when a benefactor address is added
    event BenefactorAdded(address indexed benefactor);

    /// @notice Event emitted when a beneficiary address is added or updated
    event BeneficiaryAdded(address indexed benefactor, address indexed beneficiary);

    /// @notice Event emitted when a benefactor address is removed
    event BenefactorRemoved(address indexed benefactor);

    /// @notice Event emitted when a beneficiary address is removed
    event BeneficiaryRemoved(address indexed benefactor, address indexed beneficiary);

    // @notice Event emitted when a custodian address is added
    event CustodianAddressAdded(address indexed custodian);

    // @notice Event emitted when a custodian address is removed
    event CustodianAddressRemoved(address indexed custodian);

    /// @notice Event emitted when assets are moved to custody provider wallet
    event CustodyTransfer(address indexed wallet, address indexed asset, uint256 amount);

    /// @notice Event emitted when BTCD is set
    event BTCDSet(address indexed BTCD);

    /// @notice Event emitted when the max mint per block is changed
    event MaxMintPerBlockChanged(uint256 oldMaxMintPerBlock, uint256 newMaxMintPerBlock, address indexed asset);

    /// @notice Event emitted when the max redeem per block is changed
    event MaxRedeemPerBlockChanged(uint256 oldMaxRedeemPerBlock, uint256 newMaxRedeemPerBlock, address indexed asset);

    /// @notice Event emitted when the Global max mint per block is changed
    event MaxMintPerBlockGlobalChanged(uint256 oldMaxMintPerBlockGlobal, uint256 newMaxMintPerBlockGlobal);

    /// @notice Event emitted when the Global max redeem per block is changed
    event MaxRedeemPerBlockGlobalChanged(uint256 oldMaxRedeemPerBlockGlobal, uint256 newMaxRedeemPerBlockGlobal);

    /// @notice Event emitted when a delegated signer is added, enabling it to sign orders on behalf of another address
    event DelegatedSignerAdded(address indexed delegator, address indexed signer);

    /// @notice Event emitted when a delegated signer is removed
    event DelegatedSignerRemoved(address indexed delegator, address indexed signer);

    /// @notice Event emitted when a delegated signer is initiated
    event DelegatedSignerInitiated(address indexed delegator, address indexed signer);
}
