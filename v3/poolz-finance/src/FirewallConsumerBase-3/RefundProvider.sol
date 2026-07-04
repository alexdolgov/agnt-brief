// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IERC721Receiver.sol";
import "./Refundble.sol";
import "./ISimpleProvider.sol";
import "./RefundInternal.sol";

contract RefundProvider is RefundInternal, IERC721Receiver {
    constructor(ILockDealNFT nftContract, address provider) {
        require(address(nftContract) != address(0x0) && provider != address(0x0), "RefundProvider: invalid address");
        lockDealNFT = nftContract;
        collateralProvider = FundsManager(provider);
        name = "RefundProvider";
    }

    ///@dev refund implementation
    function onERC721Received(
        address provider,
        address user,
        uint256 poolId,
        bytes calldata
    ) external override firewallProtected returns (bytes4) {
        require(msg.sender == address(lockDealNFT), "RefundProvider: invalid nft contract");
        if (provider == user) {
            uint256 collateralPoolId = poolIdToCollateralId[poolId];
            require(!collateralProvider.isPoolFinished(collateralPoolId), "RefundProvider: Refund period has expired");
            ISimpleProvider dealProvider = collateralProvider.provider();
            // user pool id can be TimedProvider, LockProvider or DealProvider
            uint256 userDataPoolId = poolId + 1;
            // User receives a refund and the tokens go into the collateral pool
            uint256 amount = dealProvider.getParams(userDataPoolId)[0];
            // using directly the deal provider for withdraw
            (uint256 withdrawnAmount, ) = dealProvider.withdraw(userDataPoolId, amount);
            collateralProvider.handleRefund(collateralPoolId, user, withdrawnAmount);
        }
        return IERC721Receiver.onERC721Received.selector;
    }

    struct RefundPoolLocals {
        uint256 paramsLength;
        IProvider provider;
        uint256 dataPoolID;
        uint256 collateralPoolId;
    }

    ///@param addresses[0] = owner
    ///@param addresses[1] = token
    ///@param addresses[2] = main coin
    ///@param addresses[3] = provider
    ///@param params[0] = tokenLeftAmount
    ///@param params[params.length - 2] = refundMainCoinAmount
    ///@param params[params.length - 1] = refund finish time
    function createNewRefundPool(
        address[] calldata addresses,
        uint256[] calldata params,
        bytes calldata tokenSignature,
        bytes calldata mainCoinSignature
    ) external firewallProtected returns (uint256 poolId) {
        _validAddressLength(addresses.length, 4);
        _validProviderInterface(IProvider(addresses[3]), Refundble._INTERFACE_ID_REFUNDABLE);
        RefundPoolLocals memory locals;
        locals.paramsLength = params.length;
        require(locals.paramsLength > 2, "RefundProvider: invalid params length");
        locals.provider = IProvider(addresses[3]);
        // create new refund pool | Owner User
        poolId = lockDealNFT.mintForProvider(addresses[0], this);

        // Hold token (data) | Owner Refund Provider
        locals.dataPoolID = lockDealNFT.safeMintAndTransfer(
            address(this),
            addresses[1],
            msg.sender,
            params[0],
            locals.provider,
            tokenSignature
        );

        locals.provider.registerPool(locals.dataPoolID, params);
        // clone token data to refund poolId
        lockDealNFT.cloneVaultId(poolId, poolId + 1);

        // Hold main coin | Project Owner
        locals.collateralPoolId = lockDealNFT.safeMintAndTransfer(
            msg.sender,
            addresses[2],
            msg.sender,
            params[locals.paramsLength - 2],
            collateralProvider,
            mainCoinSignature
        );
        collateralProvider.registerPool(locals.collateralPoolId, params);
        lockDealNFT.cloneVaultId(locals.collateralPoolId + 2, locals.dataPoolID); // clone token data to sub-collateral poolId
        // save refund data
        uint256[] memory refundRegisterParams = new uint256[](currentParamsTargetLength());
        refundRegisterParams[0] = locals.collateralPoolId;
        _registerPool(poolId, refundRegisterParams);
    }

    ///@param params[0] = collateralId
    function registerPool(
        uint256 poolId,
        uint256[] calldata params
    ) external override firewallProtected onlyProvider validProviderId(poolId) validProviderAssociation(params[0], collateralProvider) {
        require(lockDealNFT.ownerOf(poolId + 1) == address(this), "RefundProvider: Must Own poolId+1");
        _registerPool(poolId, params);

        // clone token data to refund poolId
        lockDealNFT.cloneVaultId(poolId, poolId + 1);
    }

    ///@dev split tokens and main coins into new pools
    function split(uint256 poolId, uint256 newPoolId, uint256 ratio) external firewallProtected onlyNFT {
        uint256[] memory params = new uint256[](currentParamsTargetLength());
        params[0] = poolIdToCollateralId[poolId];
        _registerPool(newPoolId, params);
        uint256 userPoolId = poolId + 1;
        lockDealNFT.safeTransferFrom(address(this), address(lockDealNFT), userPoolId, abi.encode(ratio));
    }

    ///@dev user withdraws his tokens
    function withdraw(uint256 poolId) external override firewallProtected onlyNFT returns (uint256 amountToBeWithdrawn, bool isFinal) {
        uint256 userDataPoolId = poolId + 1;
        IProvider provider = lockDealNFT.poolIdToProvider(userDataPoolId);
        amountToBeWithdrawn = provider.getWithdrawableAmount(userDataPoolId);
        if (amountToBeWithdrawn > 0) {
            uint256 fullAmount = provider.getParams(userDataPoolId)[0];
            _handleCollateralWithdraw(poolId, fullAmount);
            _transferDataNFT(poolId, userDataPoolId, fullAmount, amountToBeWithdrawn);
            ISimpleProvider(address(provider)).withdraw(userDataPoolId, amountToBeWithdrawn);
            // refund pool remains in LockDealNFT
            isFinal = true;
        }
    }
}
