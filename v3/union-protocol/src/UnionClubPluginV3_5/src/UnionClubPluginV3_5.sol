//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import {IERC1155} from "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";

import {IUToken} from "./interfaces/IUToken.sol";
import {IUserManager} from "./interfaces/IUserManager.sol";
import {IGnosisSafe} from "./interfaces/IGnosisSafe.sol";
import {Enum} from "./utils/Enum.sol";
import {IClubMemberNFTV3} from "./interfaces/IClubMemberNFTV3.sol";
import {ISwapRouter} from "./interfaces/ISwapRouter.sol";
import {ClubTiers} from "./ClubTiers.sol";
/**
 * @title UnionClubPluginV3
 * @dev A contract for the Safe wallet plugin module.
 */
contract UnionClubPluginV3_5 is UUPSUpgradeable, AccessControlUpgradeable {
    using SafeERC20 for IERC20;
    using ClubTiers for ClubTiers.Tier;

    bytes32 public constant AUTH_ROLE = keccak256("AUTH_ROLE");

    /* -------------------------------------------------------------------
     Constants and immutables
    ------------------------------------------------------------------- */

    string public constant NAME = "Union Club Plugin";
    string public constant VERSION = "0.3.5";
    uint16 public constant DENOMINATOR = 10000; //10000 = 100%
    uint16 public constant MIN_MEMBER_NUM = 10; // The minimum number of members for pro-rata amount calculation

    address public safe;
    address public userManager;
    address public uToken;
    address public unionToken;
    address public assetToken; // ie. DAI

    ISwapRouter public swapRouter;

    /* -------------------------------------------------------------------
     Storages
    ------------------------------------------------------------------- */
    uint public costToCall;
    uint public checkpoint;

    // the following vars are packed in one storage
    uint96 public maxAuthTrust;
    uint16 public callerPercent;
    uint16 public winnerPercent;
    uint32 public cooldown; // in seconds

    address public clubMemberNFT;

    uint public gracePeriod; // in seconds
    uint public memberBidPrice;
    uint public publicBidPrice;
    uint public costToMint;

    uint16 public percentageFull;
    uint16 public bidBucketPercent;
    uint16 public mintDepositRatio;
    uint16 public bidDepositRatio;

    uint public vestingDuration;
    uint public startingPercentTrust;

    bool public tierEnabled;
    bool public inviteEnabled;

    mapping(address => bool) public invited;

    address public gatingToken;

    enum TokenType {
        ERC20,
        ERC721,
        ERC1155
    }
    TokenType public gatingTokenType;

    struct InitParams {
        address safe;
        address userManager;
        address uToken;
        address unionToken;
        address auth;
        address assetToken;
        address swapRouter;
        uint96 maxAuthTrust;
        uint32 cooldown;
        uint256 memberBidPrice;
        uint256 publicBidPrice;
        uint256 costToMint;
        uint256 costToCall;
        bool tierEnabled;
        bool inviteEnabled;
    }

    /* -------------------------------------------------------------------
     Events
    ------------------------------------------------------------------- */
    event RoundCompleted(
        uint roundRewards,
        address winner,
        uint amountToWinner,
        uint amountToBidBucket,
        uint checkpoint
    );
    event MaxAuthTrustUpdated(uint96 oldTrust, uint96 newTrust);
    event CostToCallUpdated(uint oldCost, uint newCost);
    event CallerPercentUpdated(uint16 oldCallPercent, uint16 newCallPercent);
    event WinnerPercentUpdated(uint16 oldWinnerPercent, uint16 newWinnerPercent);
    event CooldownUpdated(uint32 oldCooldown, uint32 cooldown);
    event PercentageFullUpdated(uint16 oldPercent, uint16 newPercent);
    event ClubMemberNFTUpdated(address oldNft, address newNft);
    event GracePeriodUpdated(uint oldGracePeriod, uint newGracePeriod);
    event MemberBidPriceUpdated(uint oldPrice, uint newPrice);
    event PublicBidPriceUpdated(uint oldPrice, uint);
    event BidBucketPercentUpdated(uint16 oldPercent, uint16 newPercent);
    event MintDepositRatioUpdated(uint16 oldRatio, uint16 newRatio);
    event BidDepositRatioUpdated(uint16 oldRatio, uint16 newRatio);
    event CostToMintUpdated(uint oldCost, uint newCost);
    event MemberTrustUpdated(address member, uint trust);
    event StartingPercentTrustUpdated(uint oldPercent, uint newPercent);
    event VestingDurationUpdated(uint oldDuration, uint newDuration);
    event TierEnabledUpdated(bool oldTierEnabled, bool newTierEnabled);
    event InvitationSent(address member, address invited);
    event BidPlaced(address bidder, uint bidPrice, uint amountToBidder);
    event SwapRouterUpdated(address oldRouter, address Router);
    event GatingTokenUpdated(address oldGatingToken, address newGatingToken, TokenType tokenType);
    event InviteEnabledUpdated(bool oldInviteEnabled, bool newInviteEnabled);

    /* -------------------------------------------------------------------
     Errors
    ------------------------------------------------------------------- */
    error NotSafe();
    error NotMemberNFT();
    error ParamError();
    error NotEnoughFee();
    error CallTooEarly();
    error AmountIsZero();
    error InvalidBidder();
    error NoPublicMint();
    error NotInvited();
    error NoGatingToken();
    error GatingTokenNotSet();
    error CallerHaveNoGatingToken();
    error AccountAlreadyInInvitedList();
    error NoInviteCount();
    error NotExpired();
    error DebtWriteOffFailed();
    error NotOwner();
    error AccountIsOverdue();
    error CancelVouchFailed();
    error ArrayLengthsNotEqual();
    error UpdateTrustFailed();
    error NothingToClaim();
    error TransferUnionFailed();
    error WithdrawRewardsFailed();
    error SenderHasBadDebt();
    error SenderNotActive();
    error SenderIsOverdue();
    error RecipientIsOverdue();
    error TrustAmountMustBeGreaterThanZero();
    error UserManagerStakeFailed();
    error UTokenMintFailed();

    /* -------------------------------------------------------------------
     Modifiers
    ------------------------------------------------------------------- */

    modifier onlySafe() {
        if (msg.sender != (safe)) {
            revert NotSafe();
        }
        _;
    }

    modifier onlyMemberNFT() {
        if (msg.sender != clubMemberNFT) {
            revert NotMemberNFT();
        }
        _;
    }

    /* -------------------------------------------------------------------
     Contructor & Initializer
    ------------------------------------------------------------------- */
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(InitParams memory params) public initializer {
        __UUPSUpgradeable_init();

        safe = params.safe;
        userManager = params.userManager;
        uToken = params.uToken;
        unionToken = params.unionToken;
        maxAuthTrust = params.maxAuthTrust;
        costToCall = params.costToCall;
        callerPercent = 1000;
        winnerPercent = 5000;
        cooldown = params.cooldown;
        assetToken = params.assetToken;
        swapRouter = ISwapRouter(params.swapRouter);

        gracePeriod = 30 days;
        memberBidPrice = params.memberBidPrice; // with asset token
        publicBidPrice = params.publicBidPrice; // with asset token
        costToMint = params.costToMint; // with asset token

        percentageFull = 4000; // 40%
        bidBucketPercent = 4000; // 40%
        mintDepositRatio = 10000; // 100%
        bidDepositRatio = 10000; // 100%
        vestingDuration = 365 days;
        startingPercentTrust = 1e17; // 10%

        tierEnabled = params.tierEnabled;
        inviteEnabled = params.inviteEnabled;

        _grantRole(AUTH_ROLE, params.auth);
        _grantRole(DEFAULT_ADMIN_ROLE, safe);
    }

    function _authorizeUpgrade(address) internal override onlySafe {}

    receive() external payable {
        // Transfer the received Ether to the safe contract
        (bool sent, ) = payable(safe).call{value: msg.value}("");
        require(sent, "Failed to send ether");
    }

    /* -------------------------------------------------------------------
     Setters
    ------------------------------------------------------------------- */
    function setMaxAuthTrust(uint96 _maxAuthTrust) external onlySafe {
        uint96 oldMaxTrust = maxAuthTrust;
        maxAuthTrust = _maxAuthTrust;

        emit MaxAuthTrustUpdated(oldMaxTrust, maxAuthTrust);
    }

    function setCostToCall(uint _costToCall) external onlySafe {
        uint oldCost = costToCall;
        costToCall = _costToCall;

        emit CostToCallUpdated(oldCost, costToCall);
    }

    function setSwapRouter(ISwapRouter _swapRouter) external onlySafe {
        ISwapRouter oldSwapRouter = swapRouter;
        swapRouter = _swapRouter;

        emit SwapRouterUpdated(address(oldSwapRouter), address(swapRouter));
    }

    function setCallerPercent(uint16 _callerPercent) external onlySafe {
        if (_callerPercent + winnerPercent > DENOMINATOR) {
            revert ParamError();
        }

        uint16 oldCallerPercent = callerPercent;
        callerPercent = _callerPercent;

        emit CallerPercentUpdated(oldCallerPercent, callerPercent);
    }

    function setWinnerPercent(uint16 _winnerPercent) external onlySafe {
        if (_winnerPercent + callerPercent > DENOMINATOR) {
            revert ParamError();
        }

        uint16 oldWinnerPercent = winnerPercent;
        winnerPercent = _winnerPercent;

        emit WinnerPercentUpdated(oldWinnerPercent, winnerPercent);
    }

    function setCooldown(uint32 _cooldown) external onlySafe {
        uint32 oldCooldown = cooldown;
        cooldown = _cooldown;

        emit CooldownUpdated(oldCooldown, cooldown);
    }

    function setGracePeriod(uint _gracePeriod) external onlySafe {
        uint oldGracePeriod = gracePeriod;
        gracePeriod = _gracePeriod;

        emit GracePeriodUpdated(oldGracePeriod, gracePeriod);
    }

    function setMemberBidPrice(uint newPrice) external onlySafe {
        uint oldPrice = memberBidPrice;
        memberBidPrice = newPrice;

        emit MemberBidPriceUpdated(oldPrice, newPrice);
    }

    function setPublicBidPrice(uint newPrice) external onlySafe {
        uint oldPrice = publicBidPrice;
        publicBidPrice = newPrice;

        emit PublicBidPriceUpdated(oldPrice, newPrice);
    }

    function setCostToMint(uint newCost) external onlySafe {
        uint oldCost = costToMint;
        costToMint = newCost;

        emit CostToMintUpdated(oldCost, costToMint);
    }

    function setMintDepositRatio(uint16 newRatio) external onlySafe {
        uint16 oldRatio = mintDepositRatio;
        mintDepositRatio = newRatio;

        emit MintDepositRatioUpdated(oldRatio, newRatio);
    }

    function setBidDepositRatio(uint16 newRatio) external onlySafe {
        uint16 oldRatio = bidDepositRatio;
        bidDepositRatio = newRatio;

        emit BidDepositRatioUpdated(oldRatio, newRatio);
    }

    function setClubMemberNFT(address nft) external onlySafe {
        address oldNft = clubMemberNFT;
        clubMemberNFT = nft;

        emit ClubMemberNFTUpdated(oldNft, nft);
    }

    function setPercentageFull(uint16 newPercent) external onlySafe {
        uint16 oldPercent = percentageFull;
        percentageFull = newPercent;

        emit PercentageFullUpdated(oldPercent, newPercent);
    }

    function setBidBucketPercent(uint16 newPercent) external onlySafe {
        uint16 oldPercent = bidBucketPercent;
        bidBucketPercent = newPercent;

        emit BidBucketPercentUpdated(oldPercent, newPercent);
    }

    function setStartingPercentTrust(uint newPercent) external onlySafe {
        uint oldPercent = startingPercentTrust;
        startingPercentTrust = newPercent;
        emit StartingPercentTrustUpdated(oldPercent, newPercent);
    }

    function setVestingDuration(uint newDuration) external onlySafe {
        uint oldDuration = vestingDuration;
        vestingDuration = newDuration;

        emit VestingDurationUpdated(oldDuration, newDuration);
    }

    function setTierEnabled(bool newTierEnabled) external onlySafe {
        bool oldTierEnabled = tierEnabled;
        tierEnabled = newTierEnabled;

        emit TierEnabledUpdated(oldTierEnabled, newTierEnabled);
    }

    function setBaseTrust(uint256 tokenId, uint256 baseTrust) external onlyRole(AUTH_ROLE) {
        IClubMemberNFTV3(clubMemberNFT).setBaseTrust(tokenId, baseTrust);
    }

    function setTier(uint256 tokenId, ClubTiers.Tier tier) external onlyRole(AUTH_ROLE) {
        IClubMemberNFTV3(clubMemberNFT).setTier(tokenId, tier);
    }

    function setActive(uint256 tokenId, bool active) external onlyRole(AUTH_ROLE) {
        IClubMemberNFTV3(clubMemberNFT).setActive(tokenId, active);
    }

    function setGatingToken(address _gatingToken, TokenType _tokenType) external onlySafe {
        address oldGatingToken = gatingToken;
        gatingToken = _gatingToken;
        gatingTokenType = _tokenType;

        emit GatingTokenUpdated(oldGatingToken, gatingToken, gatingTokenType);
    }

    function setInviteEnabled(bool _inviteEnabled) external onlySafe {
        bool oldInviteEnabled = inviteEnabled;
        inviteEnabled = _inviteEnabled;

        emit InviteEnabledUpdated(oldInviteEnabled, _inviteEnabled);
    }

    /* -------------------------------------------------------------------
     View functions
    ------------------------------------------------------------------- */

    /**
     * @dev Checks if a given address is a club member and is not overdue in order to determine if they are eligible to be a winner.
     * @param winner The address to be checked for winner eligibility.
     * @return bool Returns true if the address is a club member and not overdue, indicating that the address is eligible to be a winner. Otherwise, it returns false.
     */
    function validateWinner(address winner) public view returns (bool) {
        IUserManager userManagerContract = IUserManager(userManager);
        IUToken uTokenContract = IUToken(uToken);

        bool isMember = userManagerContract.checkIsMember(winner);
        bool isOverdue = uTokenContract.checkIsOverdue(winner);

        return isMember && !isOverdue;
    }

    /**
     * @dev Returns the up-to-date trust amount for the club member
     * @return The pro rata amount.
     */
    function proRataAmount() external view returns (uint) {
        return _calcProRataAmount();
    }

    /**
     * Returns the current balance of the bid bucket, which is the amount of Union tokens held by this contract.
     */
    function bidBucketBalance() external view returns (uint) {
        IERC20 unionTokenContract = IERC20(unionToken);
        return unionTokenContract.balanceOf(address(this));
    }

    /**
     * @dev Determining the percent of the vesting duration that has passed since checkpoint
     */
    function percentVested(uint tokenId) public view returns (uint percent) {
        IClubMemberNFTV3 clubMemberNFTContract = IClubMemberNFTV3(clubMemberNFT);
        uint mintTimestamp = clubMemberNFTContract.updateTimestamp(tokenId);
        uint membershipTime = block.timestamp > mintTimestamp ? block.timestamp - mintTimestamp : 0;
        if (vestingDuration > 0) {
            uint quotient = membershipTime / vestingDuration;
            if (quotient > 0) {
                percent = 1e18;
            } else {
                // Calculate the remainder of the division
                uint remainder = membershipTime % vestingDuration;
                percent = (remainder * 1e18) / vestingDuration;
                percent = percent > 1e18 ? 1e18 : percent;
            }
        } else {
            percent = 1e18;
        }
    }

    /**
     * @dev Calculating what percent of the full member trust has a member earned as a function of checkpoint, duration, and now.
     */
    function currentPercentTrust(uint tokenId) public view returns (uint percentTrust) {
        if (vestingDuration > 0) {
            percentTrust = ((1e18 - startingPercentTrust) * percentVested(tokenId)) / 1e18 + startingPercentTrust;
            percentTrust = percentTrust > 1e18 ? 1e18 : percentTrust;
        } else {
            percentTrust = 1e18;
        }
    }

    /* -------------------------------------------------------------------
     Public calls
    ------------------------------------------------------------------- */

    /**
     * @dev The `feelingLucky` function allows users to participate the game.
     * It checks if the user has sent enough funds to participate and if enough time has passed since the last round.
     * If the conditions are met, the function updates the checkpoint, transfers the funds to a safe contract,
     * selects a random winner from a list of club members, calculates the rewards, and distributes them accordingly.
     */
    function feelingLucky() external payable {
        if (msg.value < costToCall) {
            revert NotEnoughFee();
        }
        if (block.timestamp < checkpoint + cooldown) {
            revert CallTooEarly();
        }
        // Update the checkpoint every time this function is called
        checkpoint = block.timestamp;

        uint256 amount = swapRouter.swap{value: msg.value}(assetToken, safe);
        if (amount == 0) {
            revert AmountIsZero();
        }
        IERC20 unionTokenContract = IERC20(unionToken);
        uint unionBefore = unionTokenContract.balanceOf(safe);
        //stake and withdraw reward
        _ratioDepositInternal(amount, DENOMINATOR);
        uint unionAfter = unionTokenContract.balanceOf(safe);
        uint diff = unionAfter - unionBefore;
        address winner = address(0);
        uint amountToWinner = 0;
        uint amountToPlugin = 0;
        if (diff > 0) {
            // Send the rewards to the caller
            uint amountToCaller = (diff * callerPercent) / DENOMINATOR;
            _transferUnionInSafe(msg.sender, amountToCaller);

            // Pick a random winner from the list of Safe's vouchees
            IUserManager userManagerContract = IUserManager(userManager);
            uint voucheeCount = userManagerContract.getVoucheeCount((safe));
            uint index = _random() % voucheeCount;
            winner = userManagerContract.vouchees(safe, index);
            if (validateWinner(winner)) {
                amountToWinner = (diff * winnerPercent) / DENOMINATOR;
                // Send the rewards to the winner
                _transferUnionInSafe(winner, amountToWinner);

                // Send the rewards to the plugin for the fixBidding
                amountToPlugin = (diff * bidBucketPercent) / DENOMINATOR;
                _transferUnionInSafe(address(this), amountToPlugin);
            } else {
                // Send the rewards to the plugin for the fixBidding
                amountToPlugin = (diff * (bidBucketPercent + winnerPercent)) / DENOMINATOR;
                _transferUnionInSafe(address(this), amountToPlugin);
            }
        }

        emit RoundCompleted(diff, winner, amountToWinner, amountToPlugin, checkpoint);
    }

    function setMemberTrust(uint tokenId) external {
        IClubMemberNFTV3 clubMemberNFTContract = IClubMemberNFTV3(clubMemberNFT);
        if (clubMemberNFTContract.ownerOf(tokenId) != msg.sender) {
            revert NotOwner();
        }
        uint trustAmount = _setMemberTrust(msg.sender, tokenId);
        emit MemberTrustUpdated(msg.sender, trustAmount);
    }

    /**
     * Allows users to bid on an asset by sending the bid price in the asset token.
     * If the bidder holds the club member NFT, they can bid at a lower price.
     * The bid price is deposited into the safe with a ratio deposit, and all Union tokens
     * held in the bid bucket (the plugin balance) are transferred to the bidder.
     */
    function fixedBid() external {
        if (block.timestamp < checkpoint + cooldown) {
            revert CallTooEarly();
        }

        // Update the checkpoint every time this function is called
        checkpoint = block.timestamp;

        address bidder = msg.sender;
        if (bidder == address(0)) {
            revert InvalidBidder();
        }

        // any address holds the member NFT can bid at a lower price
        bool bidderIsMember = IClubMemberNFTV3(clubMemberNFT).balanceOf(bidder) > 0;
        uint bidPrice = bidderIsMember ? memberBidPrice : publicBidPrice;

        // send the asset tokens to the safe address
        IERC20(assetToken).safeTransferFrom(bidder, safe, bidPrice);

        _ratioDepositInternal(bidPrice, bidDepositRatio);

        // send all Union tokens in the plugin to the bidder
        uint amountToBidder = IERC20(unionToken).balanceOf(address(this));
        IERC20(unionToken).safeTransfer(bidder, amountToBidder);

        emit BidPlaced(bidder, bidPrice, amountToBidder);
    }

    /**
     * Mints a new Club Member NFT for the eligible caller
     *
     * This function first transfers the required cost to mint the NFT from the caller's account to the contract.
     * It then checks if the caller is overdue on their membership payments, and reverts the transaction if so.
     * Finally, it deposits a portion of the minting cost into the contract's internal ratio deposit, and mints the NFT for the caller.
     *
     * @param proof The Merkle proof for the caller's eligibility to mint the NFT.
     * @return The ID of the newly minted NFT.
     */
    function mintMemberNFT(address recipient, bytes32[] memory proof) external returns (uint) {
        IERC20(assetToken).safeTransferFrom(msg.sender, safe, costToMint);
        _ratioDepositInternal(costToMint, mintDepositRatio);
        return IClubMemberNFTV3(clubMemberNFT).mint(recipient, proof);
    }
    /**
     * Mints a Club Member NFT to the specified recipient.
     *
     * @dev The function checks if the recipient meets the conditions based on invite status and gating token.
     *
     * @param recipient The address of the recipient to mint the NFT to.
     * @return The ID of the newly minted NFT.
     */
    function mintMemberNFT(address recipient) external returns (uint) {
        if (inviteEnabled == false && gatingToken == address(0)) {
            revert NoPublicMint();
        }

        if (inviteEnabled) {
            if (!invited[recipient]) {
                revert NotInvited();
            }
        }

        if (gatingToken != address(0)) {
            if (!_hasGatingToken(recipient)) {
                revert NoGatingToken();
            }
        }

        IERC20(assetToken).safeTransferFrom(msg.sender, safe, costToMint);
        _ratioDepositInternal(costToMint, mintDepositRatio);
        return IClubMemberNFTV3(clubMemberNFT).mint(recipient);
    }

    function authMint(
        address recipient,
        uint256 base,
        ClubTiers.Tier tier,
        bool active
    ) external onlyRole(AUTH_ROLE) returns (uint) {
        return IClubMemberNFTV3(clubMemberNFT).mint(recipient, base, tier, active);
    }

    /**
     * Allows a club member to invite a new account to join the club.
     *
     * @param account The address of the account being invited.
     * @notice This function can only be called by existing club members with available invite counts.
     * @notice An account can only be invited once.
     * @notice Calling this function will decrease the inviter's invite count by 1.
     */
    function invite(address account) external {
        if (invited[account]) {
            revert AccountAlreadyInInvitedList();
        }
        invited[account] = true;
        if (!IClubMemberNFTV3(clubMemberNFT).useInviteCount(msg.sender)) {
            revert NoInviteCount();
        }

        emit InvitationSent(msg.sender, account);
    }

    function inviteList(address[] memory accounts) external {
        for (uint i = 0; i < accounts.length; i++) {
            address account = accounts[i];
            if (invited[account]) {
                revert AccountAlreadyInInvitedList();
            }
            invited[account] = true;
            if (!IClubMemberNFTV3(clubMemberNFT).useInviteCount(msg.sender)) {
                revert NoInviteCount();
            }

            emit InvitationSent(msg.sender, account);
        }
    }

    /**
     * Removes a member from the club if overdue time is over the grace period
     * @param member The address of the member to remove.
     */
    function removeMember(address member) external {
        IUToken uTokenContract = IUToken(uToken);
        IUserManager userManagerContract = IUserManager(userManager);
        IClubMemberNFTV3 clubMemberNFTContract = IClubMemberNFTV3(clubMemberNFT);
        uint currTime = block.timestamp;
        uint lastRepay = uTokenContract.getLastRepay(member);
        uint overdueTime = uTokenContract.overdueTime();
        // make sure this function can only be called when the member's overdue is already over the grace period
        if (currTime - lastRepay <= gracePeriod + overdueTime) {
            revert NotExpired();
        }
        uint locked = userManagerContract.getLockedStake(safe, member);
        // safe multisig to write off the member's debt
        bytes memory data = abi.encodeWithSignature("debtWriteOff(address,address,uint256)", safe, member, locked);
        if (!(IGnosisSafe(safe).execTransactionFromModule(userManager, 0, data, Enum.Operation.Call))) {
            revert DebtWriteOffFailed();
        }
        clubMemberNFTContract.setBadDebt(member, locked);
    }

    function clearBadDebt(uint256 tokenId) external {
        address account = msg.sender;
        IUToken uTokenContract = IUToken(uToken);
        IClubMemberNFTV3 clubMemberNFTContract = IClubMemberNFTV3(clubMemberNFT);
        if (clubMemberNFTContract.ownerOf(tokenId) != msg.sender) {
            revert NotOwner();
        }
        if (uTokenContract.checkIsOverdue(account)) {
            revert AccountIsOverdue();
        }
        (, , uint256 badDebt, , ) = clubMemberNFTContract.nftCreditStatus(tokenId);
        IERC20(assetToken).safeTransferFrom(account, safe, badDebt);
        _ratioDepositInternal(costToMint, DENOMINATOR);
        clubMemberNFTContract.setBadDebt(account, 0);
    }

    function deleteMembership(uint256 tokenId) external {
        address account = msg.sender;
        IUToken uTokenContract = IUToken(uToken);
        IClubMemberNFTV3 clubMemberNFTContract = IClubMemberNFTV3(clubMemberNFT);
        if (clubMemberNFTContract.ownerOf(tokenId) != msg.sender) {
            revert NotOwner();
        }
        (, , uint256 badDebt, , ) = clubMemberNFTContract.nftCreditStatus(tokenId);
        if (!(!uTokenContract.checkIsOverdue(account) && badDebt == 0)) {
            revert AccountIsOverdue();
        }
        bytes memory data = abi.encodeWithSignature("cancelVouch(address,address)", safe, account);
        if (!(IGnosisSafe(safe).execTransactionFromModule(userManager, 0, data, Enum.Operation.Call))) {
            revert CancelVouchFailed();
        }
        clubMemberNFTContract.remove(account);
    }

    /* -------------------------------------------------------------------
     Authed calls
    ------------------------------------------------------------------- */

    /**
     * @dev Updates the trust amount for club members in the UnionClubPlugin contract.
     * @param membersToUpdate An array of member addresses to update the trust amount for.
     * @param amounts An array of trust amounts corresponding to the members in `membersToUpdate`.
     */
    function setTrust(address[] memory membersToUpdate, uint96[] memory amounts) external onlyRole(AUTH_ROLE) {
        if (membersToUpdate.length != amounts.length) {
            revert ArrayLengthsNotEqual();
        }

        bytes4 updateTrustFunc = bytes4(keccak256("updateTrust(address,uint96)"));
        bytes memory data;

        for (uint i = 0; i < membersToUpdate.length; i++) {
            address member = membersToUpdate[i];
            uint96 amount = amounts[i];

            if (member == address(0) || amount > maxAuthTrust) {
                // Don't block the next item to be updated even the current params are incorrect
                continue;
            }

            data = abi.encodeWithSelector(updateTrustFunc, member, amount);
            if (!(IGnosisSafe(safe).execTransactionFromModule(userManager, 0, data, Enum.Operation.Call))) {
                revert UpdateTrustFailed();
            }
        }
    }

    function withdrawRewards() external onlySafe {
        _withdrawRewards();
    }

    /**
     * Validates if the member's NFT can be transfered.
     *
     * @param from The address of the member transferring the NFT.
     * @param to The address of the member receiving the NFT.
     * @return true if the update is valid, false otherwise.
     */
    function validateUpdate(address from, address to, uint tokenId) external onlyMemberNFT returns (bool) {
        IUToken uTokenContract = IUToken(uToken);

        // for burning or transfering the NFT
        if (from != address(0)) {
            IClubMemberNFTV3 clubMemberNFTContract = IClubMemberNFTV3(clubMemberNFT);
            (, bool active, uint256 badDebt, , ) = clubMemberNFTContract.nftCreditStatus(tokenId);
            // Cancel the sender's vouch only if the sender doesn't have bad debt, is active, and isn't overdue
            // And the sender's nft cannot be burned or transferred
            if (!(badDebt == 0)) {
                revert SenderHasBadDebt();
            }
            if (!(active)) {
                revert SenderNotActive();
            }
            bool isOverdue = uTokenContract.checkIsOverdue(from);
            if (!(!isOverdue)) {
                revert SenderIsOverdue();
            }
            bytes memory data = abi.encodeWithSignature("cancelVouch(address,address)", safe, from);
            if (!(IGnosisSafe(safe).execTransactionFromModule(userManager, 0, data, Enum.Operation.Call))) {
                revert CancelVouchFailed();
            }
        }

        // for minting or transferring the NFT
        if (to != address(0)) {
            // Update recipient's trust amount if the recipient is not overdue
            bool isOverdue = uTokenContract.checkIsOverdue(to);
            if (!(!isOverdue)) {
                revert RecipientIsOverdue();
            }
            uint trustAmount = _setMemberTrust(to, tokenId);
            emit MemberTrustUpdated(to, trustAmount);
        }

        return true;
    }

    function claim(address recipient, address token) external onlySafe {
        IERC20 tokenContract = IERC20(token);
        uint bal = tokenContract.balanceOf(address(this));
        if (bal == 0) {
            revert NothingToClaim();
        }
        tokenContract.transfer(recipient, bal);
    }

    function addInvite(uint256 tokenId, uint8 count) external onlyRole(AUTH_ROLE) {
        IClubMemberNFTV3(clubMemberNFT).addInvite(tokenId, count);
    }

    function decInvite(uint256 tokenId, uint8 count) external onlyRole(AUTH_ROLE) {
        IClubMemberNFTV3(clubMemberNFT).decInvite(tokenId, count);
    }

    function setNftCreditStatus(
        address account,
        uint baseTrust,
        bool active,
        ClubTiers.Tier tier,
        uint8 invites
    ) external onlyRole(AUTH_ROLE) {
        IClubMemberNFTV3(clubMemberNFT).setNftCreditStatus(account, baseTrust, active, tier, invites);
    }

    /* -------------------------------------------------------------------
     Internal functions
    ------------------------------------------------------------------- */

    /**
     * @dev Withdraws rewards from the IUserManager contract.
     */
    function _withdrawRewards() private {
        bytes memory data = abi.encodeWithSignature("withdrawRewards()");
        if (!(IGnosisSafe(safe).execTransactionFromModule(userManager, 0, data, Enum.Operation.Call))) {
            revert WithdrawRewardsFailed();
        }
    }

    /**
     * @dev Transfers a specified amount of UNION tokens to a recipient address.
     * @param recipient The address of the recipient.
     * @param amount The amount of tokens to be transferred.
     */
    function _transferUnionInSafe(address recipient, uint amount) private {
        bytes memory data = abi.encodeWithSignature("transfer(address,uint256)", recipient, amount);
        if (!(IGnosisSafe(safe).execTransactionFromModule(unionToken, 0, data, Enum.Operation.Call))) {
            revert TransferUnionFailed();
        }
    }

    /**
     * @dev Generates a random number based on the current timestamp and the list of member addresses.
     * @return The random number generated by the function.
     */
    function _random() private view returns (uint) {
        bytes32 hash = keccak256(abi.encodePacked(block.timestamp, msg.sender));
        return uint(hash);
    }

    /**
     * @dev Calculates the trust amount for the club member based on: credtClub.totalStake / (percentageFull * nft.totalSupply).
     *
     * @return trustAmount The pro-rata amount.
     */
    function _calcProRataAmount() internal view returns (uint) {
        IUserManager userManagerContract = IUserManager(userManager);
        // slither-disable-next-line unused-return
        (, uint96 safeStakedAmount, , , , ) = userManagerContract.stakers(safe);

        IClubMemberNFTV3 clubMemberNFTContract = IClubMemberNFTV3(clubMemberNFT);
        uint memberNftTotalSupply = clubMemberNFTContract.totalSupply();
        memberNftTotalSupply = memberNftTotalSupply < MIN_MEMBER_NUM ? MIN_MEMBER_NUM : memberNftTotalSupply;
        return (safeStakedAmount * DENOMINATOR) / percentageFull / memberNftTotalSupply;
    }

    /**
     * @dev Sets the member's trust amount based on the pro-rata calculation and the member's vested percentage.
     * @param member The address of the member.
     * @param tokenId The ID of the member's NFT token.
     * @return trustAmount The calculated trust amount for the member.
     */
    function _setMemberTrust(address member, uint tokenId) internal returns (uint trustAmount) {
        IClubMemberNFTV3 clubMemberNFTContract = IClubMemberNFTV3(clubMemberNFT);

        (uint256 baseTrust, bool active, , ClubTiers.Tier tier, ) = clubMemberNFTContract.nftCreditStatus(tokenId);
        if (active) {
            trustAmount = _calcProRataAmount();

            if (percentVested(tokenId) < 1e18) {
                trustAmount = (trustAmount * currentPercentTrust(tokenId)) / 1e18;
            }

            if (tierEnabled) {
                trustAmount = baseTrust + (trustAmount * ClubTiers.getTierPercent(tier)) / 100;
            } else {
                trustAmount = baseTrust + trustAmount;
            }
        } else {
            trustAmount = baseTrust;
        }

        if (!(trustAmount > 0)) {
            revert TrustAmountMustBeGreaterThanZero();
        }
        bytes memory data = abi.encodeWithSignature("updateTrust(address,uint96)", member, trustAmount);
        if (!(IGnosisSafe(safe).execTransactionFromModule(userManager, 0, data, Enum.Operation.Call))) {
            revert UpdateTrustFailed();
        }
    }

    function _ratioDepositInternal(uint amount, uint16 ratio) private {
        uint stakeAmount = (amount * ratio) / DENOMINATOR;
        uint mintAmount = amount - stakeAmount;
        // stake the amount with the IUserManager contract
        if (
            !(
                IGnosisSafe(safe).execTransactionFromModule(
                    userManager,
                    0,
                    abi.encodeWithSignature("stake(uint96)", stakeAmount),
                    Enum.Operation.Call
                )
            )
        ) {
            revert UserManagerStakeFailed();
        }

        // mint uTokens
        if (mintAmount > 0) {
            if (
                !(
                    IGnosisSafe(safe).execTransactionFromModule(
                        uToken,
                        0,
                        abi.encodeWithSignature("mint(uint256)", mintAmount),
                        Enum.Operation.Call
                    )
                )
            ) {
                revert UTokenMintFailed();
            }
        }
    }

    function _hasGatingToken(address account) internal view returns (bool) {
        if (gatingToken == address(0)) return false;

        if (gatingTokenType == TokenType.ERC20) {
            return IERC20(gatingToken).balanceOf(account) > 0;
        } else if (gatingTokenType == TokenType.ERC721) {
            return IERC721(gatingToken).balanceOf(account) > 0;
        } else if (gatingTokenType == TokenType.ERC1155) {
            return IERC1155(gatingToken).balanceOf(account, 0) > 0;
        }
        return false;
    }

    function setUnionToken(address _unionToken) external onlySafe {
        unionToken = _unionToken;
    }
}
