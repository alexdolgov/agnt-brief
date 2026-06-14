// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

interface IXGLDMintingEvents {
    event CollateralSecured(
        string indexed order_id,
        address indexed benefactor,
        address indexed beneficiary,
        address collateral_asset,
        uint256 collateral_amount
    );

    event Mint(
        string indexed order_id,
        address indexed benefactor,
        address indexed beneficiary,
        address minter,
        address collateral_asset,
        uint256 collateral_amount,
        uint256 xgld_amount
    );

    event AssetAdded(address indexed asset);
    event AssetRemoved(address indexed asset);
    event BenefactorAdded(address indexed benefactor);
    event BeneficiaryAdded(address indexed benefactor, address indexed beneficiary);
    event BenefactorRemoved(address indexed benefactor);
    event BeneficiaryRemoved(address indexed benefactor, address indexed beneficiary);
    event CustodianAddressAdded(address indexed custodian);
    event CustodianAddressRemoved(address indexed custodian);
    event CustodyTransfer(address indexed wallet, address indexed asset, uint256 amount);
    event XGLDSet(address indexed xgld);
    event MaxMintPerBlockChanged(uint256 oldMaxMintPerBlock, uint256 newMaxMintPerBlock, address indexed asset);
    event GlobalMaxMintPerBlockChanged(uint256 oldMax, uint256 newMax);
    event DelegatedSignerInitiated(address indexed signer, address indexed delegator);
    event DelegatedSignerAdded(address indexed signer, address indexed delegator);
    event DelegatedSignerRemoved(address indexed signer, address indexed delegator);
    event Received(address indexed sender, uint256 amount);
    event EthRescued(address indexed to, uint256 amount);
}
