// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2023 - all rights reserved
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./ManagedVestingWallet.sol";
import "./interfaces/IVestingManager.sol";
import "./interfaces/IWalletFactory.sol";
import { ITransferableVestingWallet1 } from "./interfaces/IManagedVestingWallet.sol";


contract TransferableVestingWallet is ManagedVestingWallet {

    using SafeERC20 for IERC20;

    event Pinned(address owner, uint256 tokenId);
    event Unpinned(address owner, uint256 tokenId);
    event Merged(address to, uint256 amount);

    uint256 public pinnedTo = type(uint256).max;

    modifier onlyNFT {
        IVestingManager impl = IVestingManager(vestingManager);
        require(impl.NFT() == msg.sender, "VestingWallet: only NFT");
        _;
    }

    /**
     * @dev Pins wallet into NFT.
     *
     * @param tokenId_ The token id which locks wallet (beneficiary must own that NFT).
     */
    function pin(uint256 tokenId_) public onlyNFT {
        IVestingManager impl = IVestingManager(vestingManager);
        address eywaNFT = impl.NFT();
        IERC721 nftImpl = IERC721(eywaNFT);
        address owner = nftImpl.ownerOf(tokenId_);
        require(pinnedTo == type(uint256).max, "VestingWallet: pinned");
        require(owner == beneficiary(), "VestingWallet: NFT incorrect");
        _setBeneficiary(eywaNFT);
        pinnedTo = tokenId_;
        emit Pinned(owner, tokenId_);
    }

    /**
     * @dev Unpins wallet from NFT.
     *
     * @param tokenId_ The token id which unlocks wallet (beneficiary must own that NFT).
     */
    function unpin(uint256 tokenId_) public onlyNFT {
        IVestingManager impl = IVestingManager(vestingManager);
        address eywaNFT = impl.NFT();
        require(pinnedTo != type(uint256).max, "VestingWallet: unpinned");
        require(eywaNFT == beneficiary(), "VestingWallet: owner incorrect");
        IERC721 nftImpl = IERC721(eywaNFT);
        address owner = nftImpl.ownerOf(tokenId_);
        _setBeneficiary(owner);
        pinnedTo = type(uint256).max;
        emit Unpinned(owner, tokenId_);
    }

    /**
     * @dev Merges current wallet with another transferable wallet.
     *
     * Applicable for wallets from the same beneficiaries.
     *
     * @param to The wallet which will be merged with this wallet (all funds will be transfered to the wallet).
     */
    function merge(address to) public onlyNFT {
        ITransferableVestingWallet1 implTo = ITransferableVestingWallet1(to);
        require(address(implTo) != address(0), "VestingWallet: incorrect wallet");
        require(implTo.vestingManager() == vestingManager, "VestingWallet: incorrect manager");
        IVestingManager vestingImpl = IVestingManager(vestingManager);
        address eywaNFT = vestingImpl.NFT();
        IERC721 nftImpl = IERC721(eywaNFT);
        if (pinnedTo == type(uint256).max && implTo.pinnedTo() == type(uint256).max) {
            require(implTo.beneficiary() == beneficiary(), "VestingWallet: incorrect beneficiary");
        } else if (pinnedTo != type(uint256).max && implTo.pinnedTo() == type(uint256).max) {
            address owner = nftImpl.ownerOf(pinnedTo);
            require(implTo.beneficiary() == owner, "VestingWallet: owner incorrect");
        } else if (pinnedTo == type(uint256).max && implTo.pinnedTo() != type(uint256).max) {
            address owner = nftImpl.ownerOf(implTo.pinnedTo());
            require(beneficiary() == owner, "VestingWallet: owner incorrect");
        } else { // if (pinnedTo != type(uint256).max && implTo.pinnedTo() != type(uint256).max)
            address owner = nftImpl.ownerOf(pinnedTo);
            address ownerTo = nftImpl.ownerOf(implTo.pinnedTo());
            require(ownerTo == owner, "VestingWallet: owner incorrect");
        }
        address token = vestingImpl.token();
        IERC20 tokenImpl = IERC20(token);
        uint256 amount = tokenImpl.balanceOf(address(this));
        tokenImpl.safeTransfer(to, amount);
        implTo.increaseReleased(token, released(token));
        _erc20Released[token] = 0;
        emit Merged(to, amount);
    }

    function increaseReleased(address token, uint256 amount_) external {
        require(IWalletFactory(_factory).isValidWallet(msg.sender), "VestingWallet: wrong wallet");
        _erc20Released[token] += amount_;
    }
}