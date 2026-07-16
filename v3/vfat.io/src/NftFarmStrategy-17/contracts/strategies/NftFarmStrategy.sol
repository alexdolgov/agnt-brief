// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./modules/NftTransferModule.sol";
import "../interfaces/IFarmConnector.sol";
import "../ConnectorRegistry.sol";

contract NftFarmStrategy is NftTransferModule {
    ConnectorRegistry public immutable connectorRegistry;

    constructor(
        SickleFactory factory_,
        FeesLib feesLib_,
        ConnectorRegistry connectorRegistry_,
        address wrappedNativeAddress_
    ) NftTransferModule(factory_, feesLib_, wrappedNativeAddress_) {
        connectorRegistry = connectorRegistry_;
    }

    function depositErc721(
        address nftContractAddress,
        uint256 tokenId,
        address stakingContractAddress,
        bytes memory extraData,
        address approved,
        bytes32 referralCode
    ) public {
        Sickle sickle = Sickle(
            payable(factory.getOrDeploy(msg.sender, approved, referralCode))
        );

        address farmConnector =
            connectorRegistry.connectorOf(stakingContractAddress);

        address[] memory targets = new address[](2);
        bytes[] memory data = new bytes[](2);

        targets[0] = address(this);
        data[0] = abi.encodeCall(
            this._sickle_transfer_nft_from_user, (nftContractAddress, tokenId)
        );

        targets[1] = farmConnector;
        data[1] = abi.encodeCall(
            IFarmConnector.deposit,
            (stakingContractAddress, nftContractAddress, extraData)
        );

        sickle.multicall(targets, data);
    }

    function withdrawErc721(
        address nftContractAddress,
        uint256 tokenId,
        address stakingContractAddress,
        bytes memory extraData,
        address[] calldata sweepTokens
    ) public {
        Sickle sickle = Sickle(payable(factory.sickles(msg.sender)));
        if (address(sickle) == address(0)) {
            revert SickleNotDeployed();
        }

        address farmConnector =
            connectorRegistry.connectorOf(stakingContractAddress);

        address[] memory targets = new address[](3);
        bytes[] memory data = new bytes[](3);

        targets[0] = farmConnector;
        data[0] = abi.encodeCall(
            IFarmConnector.withdraw,
            (stakingContractAddress, tokenId, extraData)
        );

        targets[1] = address(this);
        data[1] = abi.encodeCall(
            this._sickle_transfer_nft_to_user, (nftContractAddress, tokenId)
        );

        targets[2] = address(this);
        data[2] =
            abi.encodeCall(this._sickle_transfer_tokens_to_user, (sweepTokens));

        sickle.multicall(targets, data);
    }
}
