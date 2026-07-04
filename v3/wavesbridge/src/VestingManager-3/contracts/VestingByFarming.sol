// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2023 - all rights reserved
pragma solidity ^0.8.17;

import "./VestingManager.sol";
import "./interfaces/IWalletFactory.sol";
import "./interfaces/IVestingManager.sol";
import "./interfaces/IManagedVestingWallet.sol";
import "./libs/WalletFactoryHelper.sol";
import "./interfaces/IEywaNFT.sol";
import "./interfaces/IERC721Burnable.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract VestingByFarming is VestingManager, ReentrancyGuard {

    using SafeERC20 for IERC20;

    /// @dev Represent the 91 days in seconds.
    uint256 constant THREE_MONTHS = 7862400;
    /// @dev The timestamp at which the vesting wallet was claimed.
    mapping(address => uint256) public claimedTime;
    /// @dev Address of rEYWA token.
    address public rEYWA;

    uint256 public releaseStart; 

    event Claimed(address beneficiary, address wallet, uint256 amount);

    /**
     * @param token_ The distributed token;
     * @param walletFactory_ The wallet factory contract;
     * @param rEYWA_ The rEYWA token contract;
     */
    constructor(address token_, address walletFactory_, address rEYWA_) VestingManager(token_, walletFactory_) {
        rEYWA = rEYWA_;
        allowMultipleReleases = false;
    }    

    function setReleaseStart(uint256 releaseStart_) external onlyRole(OPERATOR_ROLE) {
        require(releaseStart_ >= block.timestamp, "VestingByFarming: release less than current");
        releaseStart = releaseStart_;
    }

     /**
     * @dev Using for calculate vesting penalty.
     *  If vesting has already been released, return a constant to avoid affecting other parameters with this one. 
     *
     * @param timestamp Timestamp for which the calculation is required.
     */
    function cliff(uint256 timestamp) public view override returns (uint256 totalShares)  {
        if (timestamp < releaseStart) {
            revert("VestingByFarming: wait release");
        }

        if (IVestingWallet(msg.sender).released(token) > 0) {
            return PERCENTAGE_DENOM;
        }

        uint256 vestedTime;
        if (releaseStart > claimedTime[msg.sender]) {
            vestedTime = timestamp  - releaseStart;
        } else {
            vestedTime = timestamp - claimedTime[msg.sender];
        }

        if (vestedTime >= THREE_MONTHS) {
            return PERCENTAGE_DENOM;
        }
        return vestedTime * vestedTime * PERCENTAGE_DENOM / THREE_MONTHS / THREE_MONTHS;
    }

     /**
     * @dev Claims the vesting wallet for a user. 
     *  Converts rEYWA into an equivalent amount of EYWA within the vesting wallet.
     * 
     * @param amount Amount to claim.
     */
    function claim(uint256 amount) public nonReentrant returns (address wallet)  {

        IERC20(rEYWA).safeTransferFrom(msg.sender, address(this), amount);
        IERC721Burnable(rEYWA).burn(amount);

        wallet = WalletFactoryHelper.getNewWallet(
            walletFactory,
            msg.sender,
            address(this)
        );

        require(wallet != address(0), "VestingByNFT: incorrect wallet");

        IERC20(token).safeTransfer(wallet, amount);
        claimedTime[wallet] = block.timestamp;
        emit Claimed(msg.sender, wallet, amount);
    }
}
