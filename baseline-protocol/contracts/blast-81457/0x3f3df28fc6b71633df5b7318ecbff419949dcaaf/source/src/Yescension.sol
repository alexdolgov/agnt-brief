// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

//   ___  ___ _______  ________ ______   _______ _____  ___   ________ __     ______   _____  ___
//   |"  \/"  /"     "|/"       )" _  "\ /"     "(\"   \|"  \ /"       )" \   /    " \ (\"   \|"  \
//    \   \  (: ______|:   \___(: ( \___|: ______).\\   \    (:   \___/||  | // ____  \|.\\   \    |
//     \\  \/ \/    |  \___  \  \/ \     \/    | |: \.   \\  |\___  \  |:  |/  /    ) :): \.   \\  |
//     /   /  // ___)_  __/  \\ //  \ _  // ___)_|.  \    \. | __/  \\ |.  (: (____/ //|.  \    \. |
//    /   /  (:      "|/" \   :|:   _) \(:      "|    \    \ |/" \   :)/\  |\        / |    \    \ |
//   |___/    \_______|_______/ \_______)\_______)\___|\____\|_______/(__\_|_)"_____/   \___|\____\)

import {ISwapRouter} from "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import {ERC20} from "solady/tokens/ERC20.sol";
import {Owned} from "solmate/auth/Owned.sol";

import {IBaseline} from "./interfaces/IBaseline.sol";
import {IFlashLoan} from "./interfaces/IFlashloan.sol";

contract Yescension is Owned {

    // ───────────────────────────────────────────────────────────────── //
    //                          STATE VARIABLES                          //
    // ───────────────────────────────────────────────────────────────── //

    IBaseline public constant baseline = IBaseline(0x14eB8d9b6e19842B5930030B18c50B0391561f27);
    IFlashLoan public constant pac = IFlashLoan(0xd2499b3c8611E36ca89A70Fda2A72C49eE19eAa8);
    ISwapRouter public constant router = ISwapRouter(0x337827814155ECBf24D20231fCA4444F530C0555);

    ERC20 public constant weth = ERC20(0x4300000000000000000000000000000000000004);
    ERC20 public constant yes = ERC20(0x20fE91f17ec9080E3caC2d688b4EcB48C5aC3a9C);

    address public immutable communityMultisig;

    // address who can register claims
    address public immutable registrar;

    address public executor;

    bool public ritualStarted;
    bool public ritualEnded;
    uint256 public maxExpiry = 1925251199;

    // Total YES across which premium will be socialized.
    uint256 public totalYesSocialized;

    // Total ETH at time of ritual start
    uint256 public totalWethSocialized;

    // ========= SPOT & CREDIT ========= //

    // Global accumulators for total yescended weth
    uint256 public totalMigratedSpotWeth;
    uint256 public totalMigratedCreditWeth;

    // Data struct used for both spot and credit
    struct YescensionClaim {
        bool resolved;
        uint256 redeemableYes; // total redeemable yes
        uint256 migratedWeth; // how much yes has been redeemed and migrated
    }

    // Users will have individual spot and credit data for their
    // spot and credit claims
    mapping(address => YescensionClaim) public spotClaim;
    mapping(address => YescensionClaim) public creditClaim;

    event BeginRitual(
        uint256 totalYesSocialized,
        uint256 totalWethSocialized
    );
    event EndRitual(uint256 migratedWeth);
    event RedeemedSpot(
        address indexed account,
        bool didMigrate,
        uint256 redeemableSpotYes,
        uint256 wethOut
    );
    event RedeemedCredit(
        address indexed account,
        bool didMigrate,
        uint256 redeemableCreditYes,
        uint256 wethOut
    );
    event SpotClaimTransferred(address oldAddress, address newAddress);

    constructor(address owner_, address communityMultisig_) Owned(owner_) {
        communityMultisig = communityMultisig_;
        registrar = msg.sender;

        weth.approve(address(pac), type(uint256).max);
        weth.approve(address(baseline), type(uint256).max);
        yes.approve(address(baseline), type(uint256).max);
        yes.approve(address(router), type(uint256).max);
    }

    // ───────────────────────────────────────────────────────────────── //
    //                          ADMIN FUNCTIONS                          //
    // ───────────────────────────────────────────────────────────────── //

    // NOTE: Must be alphabetical
    struct YescensionSnapshot {
        uint256 creditYes;
        uint256 spotYes;
        address user;
    }

    // allow an executor contract to use yescension's credit account
    function setExecutor(address newExecutor_) external onlyOwner {

        if (executor != address(0)) {
            yes.approve(address(executor), 0);
            weth.approve(address(executor), 0);
        }

        yes.approve(address(newExecutor_), type(uint256).max);
        weth.approve(address(newExecutor_), type(uint256).max);

        executor = newExecutor_;
    }

    // start the chant temporarily
    function beginRitual() external onlyOwner {
        require(ritualStarted == false);

        // begin allowing claims, lock the qualifications.
        ritualStarted = true;

        // transfer all weth to this contract
        weth.transferFrom(communityMultisig, address(this), weth.balanceOf(communityMultisig));

        // begin the ritual by sacrificing eth to open loan
        weth.approve(address(router), .00_666_420_666_00 ether);
        uint256 yesOut = sellWethForYes(.00_666_420_666_00 ether);
        baseline.borrow(address(this), yesOut, 19);

        // record weth sent to contract for finding socialized premium
        // sub 6 ether to pay for premature boosters
        totalWethSocialized = weth.balanceOf(address(this)) - 6 ether;

        emit BeginRitual(totalYesSocialized, totalWethSocialized);
    }

    // no way back
    function endRitual() external onlyOwner {
        require(ritualStarted == true);

        ritualEnded = true;

        // Send the total migrated weth to the community multisig
        uint256 totalMigratedWeth = weth.balanceOf(address(this));
        weth.transfer(communityMultisig, totalMigratedWeth);

        emit EndRitual(totalMigratedWeth);
    }

    // Register both spot and credit claims
    function registerClaims(
        YescensionSnapshot[] calldata yescensions_
    ) external {
        require(msg.sender == registrar, "only registrar");
        require(ritualStarted == false);
        require(ritualEnded == false);

        for (uint256 i; i < yescensions_.length; i++) {
            YescensionSnapshot memory snapshot = yescensions_[i];

            // Ensure account has not already been registered
            YescensionClaim storage spot = spotClaim[snapshot.user];
            YescensionClaim storage credit = creditClaim[snapshot.user];
            require(spot.redeemableYes == 0 && credit.redeemableYes == 0, "already registered");

            spot.redeemableYes = snapshot.spotYes;
            credit.redeemableYes = snapshot.creditYes;

            totalYesSocialized += snapshot.spotYes + snapshot.creditYes;
        }
    }

    function setMaxExpiry(uint256 maxExpiry_) external onlyOwner {
        maxExpiry = maxExpiry_;
    }

    // ritual might have started, but we should be able to make adjsutments to claimers
    // cannot change the totalYesAscendable
    // This is resolves the `oldAddress_`
    function transferSpotClaim(
        address oldAddress_,
        address newAddress_
    ) external onlyOwner {
        // allow migrations even after ritual has begun
        require(ritualEnded == false);

        YescensionClaim storage oldSpot = spotClaim[oldAddress_];
        YescensionClaim storage newSpot = spotClaim[newAddress_];

        // make sure both the current account and new account have not ascended
        require(oldSpot.resolved == false);
        require(newSpot.resolved == false);

        // Resolve old address to prevent them from double claiming
        oldSpot.resolved = true;

        uint256 amountToReassign = oldSpot.redeemableYes;
        oldSpot.redeemableYes = 0;
        newSpot.redeemableYes += amountToReassign;

        emit SpotClaimTransferred(oldAddress_, newAddress_);
    }


    // ───────────────────────────────────────────────────────────────── //
    //                          USER FUNCTIONS                           //
    // ───────────────────────────────────────────────────────────────── //

    function getMigratableYes(address user_) external view returns (uint256) {
        return spotClaim[user_].redeemableYes + creditClaim[user_].redeemableYes;
    }

    function getSpotClaim(address user_) external view returns (YescensionClaim memory) {
        return spotClaim[user_];
    }

    function getCreditClaim(address user_) external view returns (YescensionClaim memory) {
        return creditClaim[user_];
    }

    /// @notice Users migrate their entire YES spot allocation in the ritual
    function redeemSpot(bool migrate_) external returns (uint256) {
        require(ritualStarted == true, "ritual has not started");
        require(ritualEnded == false, "ritual has ended");

        YescensionClaim storage spot = spotClaim[msg.sender];
        require(spot.redeemableYes > 0, "no spot to redeem");

        uint256 yesBalance = yes.balanceOf(msg.sender);
        uint256 yesToRedeem = spot.redeemableYes > yesBalance ? yesBalance : spot.redeemableYes;
        require(yesToRedeem > 0, "no yes");

        // If user has already migrated, revert
        require(
            spot.resolved == false,
            "you had one shot, one opportunity, to seize everything you ever wanted"
        );
        spot.resolved = true;

        // Transfer in spot yes and borrow to get at least BLV into contract
        yes.transferFrom(msg.sender, address(this), yesToRedeem);

        // Borrow against spot yes to get weth for redemption
        // Borrow with 0 input to get max amount of eth
        (uint256 wethOut,) = baseline.borrow(address(this), yesToRedeem, 0);

        // Give the socialized premium on top to get final redeemable amount
        uint256 socializedPremium = yesToRedeem * totalWethSocialized / totalYesSocialized;
        uint256 redeemWeth = wethOut + socializedPremium;

        if (migrate_) {
            // increment accumulators for migration
            totalMigratedSpotWeth += redeemWeth;
            spot.migratedWeth = redeemWeth;
        } else {
            // send user their total redeemed weth
            weth.transfer(msg.sender, redeemWeth);
        }

        emit RedeemedSpot(msg.sender, migrate_, yesToRedeem, redeemWeth);

        return redeemWeth;
    }

    function redeemCredit(bool migrate_) external returns (uint256) {
        require(ritualStarted == true, "ritual has not started");
        require(ritualEnded == false, "ritual has ended");

        YescensionClaim storage creditAcc = creditClaim[msg.sender];
        require(creditAcc.redeemableYes > 0, "no credit to redeem");

        // If user has already migrated, revert
        require(
            creditAcc.resolved == false,
            "you had one shot, one opportunity, to seize everything you ever wanted"
        );
        creditAcc.resolved = true;

        // Unwind account if able, results in boost.
        // NOTE: All boosted eth is with the user
        _unwind(msg.sender);

        // Give the socialized premium to credit claim
        uint256 redeemedPremiumWeth = creditAcc.redeemableYes * totalWethSocialized / totalYesSocialized;

        if (migrate_) {
            // Record total amount of weth migrated
            totalMigratedCreditWeth += redeemedPremiumWeth;
            creditAcc.migratedWeth = redeemedPremiumWeth;
        } else {
            // Send user the diff in premium
            weth.transfer(msg.sender, redeemedPremiumWeth);
        }

        emit RedeemedCredit(
            msg.sender,
            migrate_,
            creditAcc.redeemableYes,
            redeemedPremiumWeth
        );

        return redeemedPremiumWeth;
    }

    /// @notice Use boost to estimate how much weth user will receive. This will
    ///         ALWAYS understimate, ie users will always receive more from an unwind.
    /// @dev    The reason for underestimating is because users will only pay 1 day
    ///         of interest, instead of full interest.
    function estimateUnwind(address user_) external returns (uint256 boostWeth) {
        // since we use flash repay, user will actually receive more (due to not paying full interest)
        IBaseline.CreditAccount memory account = baseline.getCreditAccount(
            user_
        );
        if (baseline.getFloorPrice() > account.lastFloor) {
            (boostWeth, , ) = baseline.estimateBorrow(user_, 0, 0);
        }
    }

    // Unwind credit position, sell or borrow against yes and end with eth
    function _unwind(address user_) internal {
        IBaseline.CreditAccount memory account = baseline.getCreditAccount(
            user_
        );
        require(account.expiry <= maxExpiry, "Expiry too far in the future");

        if (account.principal == 0) return;

        // get eth needed to repay
        uint256 credit = account.principal + account.interest;

        // Repay user's credit account using flash loan
        // NOTE: see `executeOperation` for the flash loan callback
        pac.flashLoanSimple(
            address(this),
            address(weth),
            credit,
            abi.encode(user_),
            0
        );
    }

    function executeOperation(
        address /*asset*/,
        uint256 flashAmount,
        uint256 flashFee,
        address initiator,
        bytes memory params
    ) external returns (bool) {
        require(msg.sender == address(pac), "must come from pac pool");
        require(initiator == address(this), "must be self-initiated");

        address user = abi.decode(params, (address));

        // Repayment should close the credit account completely
        uint256 repaidYes = baseline.repay(user, flashAmount);

        // Transfer in full collateral
        yes.transferFrom(user, address(this), repaidYes);

        // Borrow with min interest, send user back their value from last shift
        // Borrow with 0 input to get max amount of eth
        (uint256 amountOut,) = baseline.borrow(address(this), repaidYes, 0);

        // Give the user their profit if any
        uint256 cost = flashAmount + flashFee;
        if (amountOut > cost) {
            weth.transfer(user, amountOut - cost);
        }

        return true;
    }

    function sellWethForYes(uint256 sellAmount_) internal returns (uint256) {
        // Swap the reserves for bAssets
        return
            router.exactInputSingle(
                ISwapRouter.ExactInputSingleParams({
                    tokenIn: address(weth),
                    tokenOut: address(yes),
                    fee: 10_000,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: sellAmount_,
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: 0
                })
            );
    }

    // Get the expiration time for this contract's credit account
    function getExpiry() external view returns (uint256){
        IBaseline.CreditAccount memory account = baseline.getCreditAccount(address(this));
        return account.expiry;
    }
}
