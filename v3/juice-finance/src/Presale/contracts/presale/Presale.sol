//SPDX-License-Identifier: MIT

// testnet address: 0xa89dACC9188Bc6933C79E09EB74884D9AB23bb17

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
// import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../../contracts/system/ProtocolGovernor.sol";
import "../../contracts/system/ProtocolModule.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";

pragma solidity ^0.8.18;

contract Presale is ReentrancyGuard, Pausable, ProtocolModule {
    using SafeERC20 for IERC20;

    // struct containing relevant information for the presale, such as start date etc.
    struct Config {
        // start date for the presale
        uint256 presaleStart;
        // end date for the presale
        uint256 presaleEnd;
        // timestamp when users can start claiming their tokens after the reservation period
        uint256 claimStart;
        // timestamp when when claiming is disabled, and users can no longer claim tokens
        uint256 claimEnd;
    }

    // purchase information. paidInWeth and paidInETH are used
    struct PurchaseStats {
        // amount the user reserved in buyPresale call
        uint256 desiredPurchaseAmount;
        // whether the tokens have been claimed or not
        bool claimed;
    }

    ////////////////////////////////
    /////////// STATE  /////////////
    ////////////////////////////////

    // presale global settings. set by admin via initializeConfig function
    Config public presaleConfig;
    // tracks config account initialization to prevent reinitialization
    bool public isConfigInitialized;
    uint256 public totalWhitelistedUsers;
    // root of merkle tree used to store whitelisted addresses who are eligible for presale
    bytes32 public whitelistMerkleRoot;

    // Juice Token
    IERC20 public juiceToken;
    // WETH Token Address

    // price of juice in eth
    uint256 public constant price = 0.00002071 ether;
    // min value that an be spent to purchase tokens
    uint256 public constant minPurchaseLimit = 0.025 ether;
    // upper bound on the number that users can purchase
    uint256 public constant tokenPurchaseLimit = 12_071 * 10 ** 18; // 0.25e
    uint256 public guaranteedAtLeast;

    // mapping of address => claimed amount
    mapping(address => PurchaseStats) public purchaseInfo;
    // in case a user does not choose to purchase their entire allowance of tokens
    // these tokens become available to other whitelisted addresses
    // these are distrubuted on a first come - first serve basis.
    // users who would like to receive MORE than their guaranteed allowance
    // can purchase tokens from this pool if they wish
    uint256 public extraTokens;

    uint256 public numUsersWhoHaveReserved;
    uint256 public amountTokensReserved;

    uint256 public numUsersWhoHaveClaimed;
    uint256 public amountTokensClaimed;

    bool public alreadySaturated;

    ////////////////////////////////
    /////////// EVENTS /////////////
    ////////////////////////////////

    event PresaleTokensReserved(address indexed buyer, uint256 amount);
    event TokensClaimed(address indexed claimer, uint256 amount);
    event ConfigInitialized(
        uint256 presaleStartTime, uint256 presaleEndTime, uint256 claimStartTime, uint256 claimEndTime
    );
    event ExtraTokensSaturated(uint256 tokensAdded);
    event EthLiquidityWithdrawn(address to, uint256 amount);
    event JuiceTokensWithdrawn(address to, uint256 amount);

    ////////////////////////////////
    /////// PROGRAM LOGIC //////////
    ////////////////////////////////

    constructor(
        address _juiceToken,
        bytes32 _merkleRoot,
        uint256 _totalWhitelistedUsers,
        address _protocolGovernor
    )
        ProtocolModule(_protocolGovernor)
    {
        juiceToken = IERC20(_juiceToken);
        whitelistMerkleRoot = _merkleRoot;

        require(_totalWhitelistedUsers > 0, "CANNOT HAVE ZERO WHITELISTED USERS");
        totalWhitelistedUsers = _totalWhitelistedUsers;
    }

    // admin gated function to initialize state of the presaleConfig
    // this function cannot be called twice due to isConfigInitialized check
    function initializeConfig(
        uint256 _presaleStart,
        uint256 _presaleEnd,
        uint256 _claimStart,
        uint256 _claimEnd
    )
        external
        onlyOwner
    {
        require(!isConfigInitialized, "CONFIG ALREADY INITIALIZED");
        require(_presaleStart > block.timestamp, "START TIME MUST BE SET TO FUTURE DATE");
        require(_presaleEnd > _presaleStart, "END TIME MUST BE GREATER THAN START TIME");
        require(
            (_claimEnd > _claimStart) && (_claimStart > _presaleEnd), "CLAIM PERIOD MUST START AFTER RESERVATION PERIOD"
        );

        // each user is guaranteed at least the number of tokens / number of whitelisted address
        // this way every user is eligiible to purchase their max alloted amount
        // with 20m tokens allocated for the presale, and 2000 whitelisted users, each user is allowed to reserve
        // up to 10k tokens
        uint256 userAllowance = juiceToken.balanceOf(address(this)) / totalWhitelistedUsers;
        require(userAllowance > 0, "GUARANTEED ALLOCATION MUST BE GREATER THAN ZERO");
        guaranteedAtLeast = userAllowance;
        // 50% higher than guaranteed amount, can only get more than guaranteed if other users do not claim all of their
        // allocation
        require((tokenPurchaseLimit) > userAllowance, "userAllowance MUST BE LESS THAN purchaseLimit");

        presaleConfig = Config({
            presaleStart: _presaleStart,
            presaleEnd: _presaleEnd,
            claimStart: _claimStart,
            claimEnd: _claimEnd
        });
        // set the initialized state variable to true in order to prevent re-initialization
        isConfigInitialized = true;

        emit ConfigInitialized(_presaleStart, _presaleEnd, _claimStart, _claimEnd);
    }

    // only whitelisted addresses are able to make call to reserve tokens.
    function reservePresale(
        uint256 amount,
        bytes32[] calldata proof
    )
        external
        payable
        nonReentrant
        whenNotPaused
        returns (uint256, uint256)
    {
        Config memory config = presaleConfig;

        require(isConfigInitialized, "PRESALE CONFIG HAS NOT BEEN SET");
        require(block.timestamp >= config.presaleStart, "PRESALE HAS NOT STARTED YET");
        require(block.timestamp < config.presaleEnd, "PRESALE HAS ENDED");

        // verify the caller is whitelisted
        bytes32 leaf = keccak256(abi.encodePacked(msg.sender));
        require(MerkleProof.verify(proof, whitelistMerkleRoot, leaf), "ADDRESS NOT WHITELISTED");

        // amount of tokens the user has already reserved
        uint256 alreadyReserved = purchaseInfo[msg.sender].desiredPurchaseAmount;
        uint256 newReservedAmount = alreadyReserved + amount;

        // ensure the amount they are trying to purchase is less than the max allowed
        require(newReservedAmount <= tokenPurchaseLimit, "CANNOT RESERVE MORE THAN tokenPurchaseLimit");

        // cost in wei
        uint256 cost = Math.ceilDiv((price * amount), 10 ** 18);

        require(cost >= minPurchaseLimit, "BELOW PURCHASE MINIMUM");

        // take care of balance/value sent checks
        require(msg.value >= cost, "Insufficient eth sent");

        (uint256 newExtraTokensValue) = calcExtraTokens(alreadyReserved, newReservedAmount);
        extraTokens = newExtraTokensValue;

        // increment the users desiredPurchaseAmount
        purchaseInfo[msg.sender].desiredPurchaseAmount = newReservedAmount;

        //refund excess tokens if user sent more than the real cost of the tokens reserved
        // this is only necessary for payments in eth itself
        amountTokensReserved += amount;

        uint256 refundAmount = 0;

        if (msg.value > cost) {
            // calculate refund amount and send back to user
            refundAmount = msg.value - cost;
            (bool success,) = msg.sender.call{ value: refundAmount }("");
            require(success, "REFUND FAILED");
        }

        emit PresaleTokensReserved(msg.sender, amount);

        return (amount, refundAmount);
    }

    function claimPresale() external nonReentrant returns (uint256, uint256) {
        Config memory config = presaleConfig;

        require(block.timestamp >= config.claimStart, "CLAIM PERIOD HAS NOT STARTED YET");
        require(block.timestamp < config.claimEnd, "CLAIMING WINDOW HAS ENDED");

        // amount of tokens the user wanted during reservation phase, this whole amount has been paid for
        uint256 userReservedAmount = purchaseInfo[msg.sender].desiredPurchaseAmount;
        require(userReservedAmount > 0, "NO TOKENS TO CLAIM");
        require(!purchaseInfo[msg.sender].claimed, "TOKENS ALREADY CLAIMED");

        // amount that will be sent to the user
        (uint256 amountToClaim, uint256 refundAmount) = calculateRealizedClaimAndRefund(userReservedAmount, price);

        purchaseInfo[msg.sender].claimed = true;

        numUsersWhoHaveClaimed += 1;

        amountTokensClaimed += amountToClaim;
        // transfer juice tokens to the user
        juiceToken.safeTransfer(msg.sender, amountToClaim);

        // send the user their refund if they did not receive as many tokens as they initially paid for
        if (refundAmount > 0) {
            (bool success,) = msg.sender.call{ value: refundAmount }("");
            require(success, "Refund Process Failed");
        }

        emit TokensClaimed(msg.sender, amountToClaim);

        return (amountToClaim, refundAmount);
    }

    ////////////////////////////////
    /////////// Helpers ////////////
    ////////////////////////////////

    function calcExtraTokens(uint256 initReserved, uint256 newReserved) private returns (uint256) {
        uint256 _extraTokens = extraTokens;
        uint256 guaranteed = guaranteedAtLeast;

        // if the user has not made a previous reservation
        if (initReserved == 0) {
            if (newReserved < guaranteed) {
                _extraTokens += (guaranteed - newReserved);
            }
            numUsersWhoHaveReserved += 1;
            // if alreadyReserved == 0 and newReservedAmount is >= guaranteedAtLeast, no
            // modifications need to be made to extraTokens

            // if the user has previously made a reservation (initReserved is nonzero)
        } else {
            // they previously made a reservation, but their newReservedAmount is still < guaranteedAtLeast
            if (newReserved < guaranteed) {
                uint256 _amount = newReserved - initReserved;
                // must decrement a portion of extra tokens that were added during their previous purchases
                _extraTokens -= _amount;

                // if they already have a reservation but was is less than guaranteedAtLeast,
                // and the new addition puts the reservation >= guaranteedAtLeast,
                // subtract the extra tokens that were previously added (guaranteedAtLeast - alreadyReserved)
            } else if ((initReserved < guaranteed) && (newReserved >= guaranteed)) {
                _extraTokens -= (guaranteed - initReserved);
            }
        }

        return (_extraTokens);
    }

    function calculateRealizedClaimAndRefund(
        uint256 reservedAmount,
        uint256 _price
    )
        private
        returns (uint256, uint256)
    {
        uint256 refundAmount;
        uint256 amountToClaim;
        uint256 guaranteed = guaranteedAtLeast;
        // if the user reserved more than the guaranteedAmount
        if (reservedAmount > guaranteed) {
            uint256 _extraTokens = extraTokens;

            // if there are extra tokens to give out
            if (_extraTokens > 0) {
                // how many extra tokens the user wants
                uint256 desiredExtra = reservedAmount - guaranteed;
                // if the user wants more extra tokens than are available, user gets all the extraTokens
                // otherwise there is enough extra tokens, so return the desiredExtra since it can all be filled
                uint256 realizedExtra = desiredExtra > _extraTokens ? _extraTokens : desiredExtra;
                // sum to determine total amount to claim (guaranteed + realizedExtra)
                amountToClaim = (guaranteed) + realizedExtra;
                // decrement extraTokens since some/all were used
                extraTokens -= realizedExtra;

                // if they payed for more extra tokens than they are going to receive, refund the differnce,
                if (desiredExtra > realizedExtra) {
                    refundAmount = (desiredExtra - realizedExtra) * _price / 10 ** 18;
                    // if they reserved more than guaranteed amount, and realized extra == desired extra, no refund is
                    // necessary
                } else {
                    refundAmount = 0;
                }
                // if the user wanted more than guaranteedAmount, but there are no extra tokens remaining,
                // set claim amount to guaranteedAmount.
                // refund difference between what they reserved and what they will actually receive
            } else {
                amountToClaim = guaranteed;
                refundAmount = (reservedAmount - guaranteed) * _price / 10 ** 18;
            }
            // if the user did not attempt to reserve more tokens than the guaranteed amount, set
            // claim amount to what they asked for. no refund necessary
        } else {
            amountToClaim = reservedAmount;
            refundAmount = 0;
        }

        return (amountToClaim, refundAmount);
    }

    //////////////////////////////////////////////
    //////////// Admin functionality /////////////
    /////////////////////////////////////////////

    function adminSaturateRemainingExtra() external onlyOwner returns (uint256) {
        require(!alreadySaturated);
        require(
            presaleConfig.presaleEnd < block.timestamp && presaleConfig.claimStart > block.timestamp,
            "must saturate between presale end and claim start"
        );

        alreadySaturated = true;

        if (numUsersWhoHaveReserved < totalWhitelistedUsers) {
            uint256 tokensToAdd = ((totalWhitelistedUsers - numUsersWhoHaveReserved) * guaranteedAtLeast);
            extraTokens += tokensToAdd;

            emit ExtraTokensSaturated(tokensToAdd);
            return (tokensToAdd);
        } else {
            emit ExtraTokensSaturated(0);
            return (0);
        }
    }

    // if you want to push back the reservation window, make sure to call adminChangeClaimWindow first to pass require
    // statements
    function adminChangeReservationWindow(uint256 _presaleStart, uint256 _presaleEnd) external onlyOwner {
        require(block.timestamp < _presaleStart);
        require(_presaleStart < _presaleEnd);
        require(_presaleEnd < presaleConfig.claimStart);

        presaleConfig.presaleStart = _presaleStart;
        presaleConfig.presaleEnd = _presaleEnd;
    }

    // if you want to change the reservation and claiming window, call this function first
    function adminChangeClaimWindow(uint256 _claimStart, uint256 _claimEnd) external onlyOwner {
        require(block.timestamp < _claimStart);
        require(_claimStart < _claimEnd);
        require(presaleConfig.presaleEnd < _claimStart);

        presaleConfig.claimStart = _claimStart;
        presaleConfig.claimEnd = _claimEnd;
    }

    function adminWithdrawEthLiquidity(address to) external onlyOwner {
        require(block.timestamp > presaleConfig.claimEnd);
        uint256 balance = address(this).balance;
        payable(to).transfer(balance);

        emit EthLiquidityWithdrawn(to, balance);
    }

    function adminWithdrawRemainingJuiceTokens(address to) external onlyOwner {
        require(block.timestamp > presaleConfig.claimEnd);
        uint256 balance = juiceToken.balanceOf(address(this));
        juiceToken.safeTransfer(to, balance);

        emit JuiceTokensWithdrawn(to, balance);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    fallback() external payable { }

    receive() external payable { }
}
