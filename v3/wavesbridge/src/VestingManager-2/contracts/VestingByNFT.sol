// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2023 - all rights reserved
pragma solidity ^0.8.17;

import "./VestingByWhitelist.sol";
import "./interfaces/IWalletFactory.sol";
import "./libs/WalletFactoryHelper.sol";
import "./interfaces/IEywaNFT.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";


contract VestingByNFT is VestingByWhitelist, ReentrancyGuard {

    using SafeERC20 for IERC20;

    /**
     * @param token_ The distributed token;
     * @param walletFactory_ The wallet factory contract;
     */
    constructor(address token_, address walletFactory_) VestingByWhitelist(token_, walletFactory_) {
    }    

    /**
     * @dev Claims wallet for caller.
     *
     * @param amount Amount of tokens for vesting. 
     * If amount is max value, give wallet with all available user's claimableAmount.
     */
    function claim(uint256 amount) public nonReentrant returns (address wallet)  {

        IEywaNFTArbitrum nftImpl = IEywaNFTArbitrum(NFT);
        if (amount == type(uint256).max) {
            amount = nftImpl.claimableAmount(msg.sender);
        } else {
            require(amount <= nftImpl.claimableAmount(msg.sender), "EywaNFT: incufficient amount");
        }
        
        IERC20 tokenImpl = IERC20(token);
        require(amount > 0, "VestingByNFT: zero amount");
        nftImpl.decreaseClaimableAmount(msg.sender, amount);

        wallet = WalletFactoryHelper.getNewWallet(
            walletFactory,
            msg.sender,
            address(this)
        );
        require(wallet != address(0), "VestingByNFT: incorrect wallet");

        tokenImpl.safeTransfer(wallet, amount);
        emit Claimed(msg.sender, wallet, amount);
    }
}
