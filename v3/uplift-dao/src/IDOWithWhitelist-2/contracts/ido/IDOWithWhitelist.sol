// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.8;

import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import { IERC165Upgradeable, ERC165Upgradeable } from "@openzeppelin/contracts-upgradeable/utils/introspection/ERC165Upgradeable.sol";
import { IERC165 } from "@openzeppelin/contracts/utils/introspection/IERC165.sol";

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { MerkleProof } from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import { IIDOWithWhitelist } from "../interfaces/IIDOWithWhitelist.sol";
import { IPool } from "../interfaces/IPool.sol";
import { IRandomGenerator } from "../interfaces/IRandomGenerator.sol";
import { IReferrersData } from "../interfaces/IReferrersData.sol";
import { IWhitelist } from "../interfaces/IWhitelist.sol";
import { IStaking } from "../interfaces/IStaking.sol";

import { BaseRoleChecker } from "../BaseRoleChecker.sol";
import { BP } from "../libraries/BP.sol";
import { UQ112x112 } from "../libraries/UQ112x112.sol";

contract IDOWithWhitelist is
    IIDOWithWhitelist,
    UUPSUpgradeable,
    ReentrancyGuardUpgradeable,
    ERC165Upgradeable,
    BaseRoleChecker
{
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    address public override staking;
    address public override buyToken;
    address public override referralPool;
    address public override referrersData;
    address public override whitelist;
    address public override randomGenerator;

    // Whitelist
    uint256 public override totalTickets;
    uint128 public override stakingPowerForOneTicket;
    uint16 public override maxTicketsPerUser;

    // Lottery
    uint128 public override rangeStep;
    uint16 public override purchaseRateInBP;
    uint256 public override estimatedTotalRaiseInBuyToken;

    // Common info
    uint256 public override distributedAmountInToken;
    uint32 public override registrationStartTimestamp;
    uint32 public override registrationEndTimestamp;
    uint32 public override startTimestamp;

    // Purchase
    uint256 public override allocationPerTicketInBuyToken;
    uint256 public override openRoundMinStakingPower;
    uint256 public override openRoundMaxAllocationInBuyToken;

    // Statistics
    uint256 public override totalBoughtInToken;

    // Merkle tree info
    string linkToCSV;
    bytes32 root;

    mapping(address => uint256) public override lotteryTicketsOf;
    mapping(address => uint256) public override amountOf;

    // This is done because user can make multiple purchase
    mapping(address => mapping(address => uint256)) private referrersAmountOf;
    mapping(address => EnumerableSet.AddressSet) private referrersAddressOf;

    Round public exclusiveRound;
    Round public openRound;
    Range[] public ranges;

    address private _projectFundsHolder;
    address private _referrerBreakageFundsHolder;

    constructor() initializer {}

    function initialize(InitializeParams calldata initializeParams_) external initializer {
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();
        __ERC165_init();
        __BaseRoleChecker_init(initializeParams_.registry);
        require(
            initializeParams_.staking != address(0) &&
                initializeParams_.buyToken != address(0) &&
                initializeParams_.projectFundsHolder != address(0) &&
                initializeParams_.referrerBreakageFundsHolder != address(0) &&
                initializeParams_.referrersData != address(0) &&
                initializeParams_.distributedAmountInToken != 0 &&
                initializeParams_.registrationStartTimestamp != 0 &&
                initializeParams_.maxTicketsPerUser != 0,
            "IWW:Z"
        );
        require(
            IERC165(initializeParams_.whitelist).supportsInterface(type(IWhitelist).interfaceId) &&
                IERC165(initializeParams_.referralPool).supportsInterface(type(IPool).interfaceId) &&
                IERC165(initializeParams_.randomGenerator).supportsInterface(type(IRandomGenerator).interfaceId),
            "IWW:I"
        );
        require(
            initializeParams_.registrationEndTimestamp > initializeParams_.registrationStartTimestamp &&
                initializeParams_.startTimestamp > initializeParams_.registrationEndTimestamp,
            "IWW:I"
        );

        staking = initializeParams_.staking;
        buyToken = initializeParams_.buyToken;
        referralPool = initializeParams_.referralPool;
        referrersData = initializeParams_.referrersData;
        whitelist = initializeParams_.whitelist;
        randomGenerator = initializeParams_.randomGenerator;
        _projectFundsHolder = initializeParams_.projectFundsHolder;
        _referrerBreakageFundsHolder = initializeParams_.referrerBreakageFundsHolder;

        stakingPowerForOneTicket = initializeParams_.stakingPowerForOneTicket;

        registrationStartTimestamp = initializeParams_.registrationStartTimestamp;
        maxTicketsPerUser = initializeParams_.maxTicketsPerUser;
        openRoundMinStakingPower = initializeParams_.openRoundMinStakingPower;
        rangeStep = initializeParams_.rangeStep;

        for (uint256 i; i < initializeParams_.ranges.length; ++i) {
            ranges.push(initializeParams_.ranges[i]);
        }

        _setDistributedAmountInToken(initializeParams_.distributedAmountInToken);
        _setRegistrationEndTimestamp(initializeParams_.registrationEndTimestamp);
        _setStartTimestamp(initializeParams_.startTimestamp);
        _setExclusiveRoundEnd(initializeParams_.exclusiveRound.maxEndTimestamp);
        _setOpenRoundEnd(initializeParams_.openRound.maxEndTimestamp);
        _setPrice(initializeParams_.exclusiveRound.priceTokenPerBuyTokenInUQ);
    }

    function setMerkleTreeWhiteList(string calldata linkToCSV_, bytes32 root_)
        external
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        _setMerkleTreeWhiteList(linkToCSV_, root_);
    }

    function setDistributedAmountInToken(uint256 distributedAmountInToken_)
        external
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        _setDistributedAmountInToken(distributedAmountInToken_);
    }

    function setRegistrationEndTimestamp(uint32 registrationEndTimestamp_)
        external
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        _setRegistrationEndTimestamp(registrationEndTimestamp_);
    }

    function setStartTimestamp(uint32 startTimestamp_) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _setStartTimestamp(startTimestamp_);
    }

    function setExclusiveRoundEnd(uint32 endTimestamp_) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _setExclusiveRoundEnd(endTimestamp_);
    }

    function setOpenRoundEnd(uint32 endTimestamp_) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _setOpenRoundEnd(endTimestamp_);
    }

    function setPrice(uint256 priceTokenPerBuyTokenInUQ_) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _setPrice(priceTokenPerBuyTokenInUQ_);
    }

    function setRangeAllocations(uint128[] calldata allocations_) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _setRangeAllocations(allocations_);
    }

    function setOpenRoundMaxAllocationInBuyToken(uint256 openRoundMaxAllocationInBuyToken_)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        _setOpenRoundMaxAllocationInBuyToken(openRoundMaxAllocationInBuyToken_);
    }

    function register(RegisterParams calldata registerParams_)
        external
        override
        nonReentrant
        requireKYC(registerParams_.signatures, registerParams_.signers)
        updateStakingPower(registerParams_.idsToUpdate)
    {
        require(block.timestamp >= registrationStartTimestamp && block.timestamp < registrationEndTimestamp, "IWW:I");
        require(lotteryTicketsOf[msg.sender] == 0, "IWW:I");
        require(IStaking(staking).canParticipate(msg.sender), "IWW:I");
        IStaking.InfoAccountDetails memory stakingDetails = IStaking(staking).info(msg.sender);
        uint256 tickets = Math.min(
            stakingDetails.accountDetails.totalStakingPower / stakingPowerForOneTicket,
            maxTicketsPerUser
        );
        require(tickets > 0, "IWW:Z");
        lotteryTicketsOf[msg.sender] = tickets;
        totalTickets += tickets;
        ++ranges[(tickets * stakingPowerForOneTicket) / rangeStep].registeredUserCount;
        IStaking(staking).setLastRegistrationDate(msg.sender, block.timestamp);
        emit Register(msg.sender, tickets);
    }

    function unregister() external override nonReentrant {
        require(block.timestamp < registrationEndTimestamp, "IWW:I");
        uint256 userTickets = lotteryTicketsOf[msg.sender];
        require(userTickets > 0, "IWW:I");

        lotteryTicketsOf[msg.sender] = 0;
        totalTickets -= userTickets;
        --ranges[(userTickets * stakingPowerForOneTicket) / rangeStep].registeredUserCount;
        IStaking(staking).setLastRegistrationDate(msg.sender, 0);
        emit Unregister(msg.sender);
    }

    function requestSeed(
        string calldata linkToCSV_,
        bytes32 root_,
        uint128[] calldata allocations_,
        uint16 purchaseRateInBP_,
        uint256 openRoundMaxAllocationInBuyToken_,
        uint256 allocationPerTicketInBuyToken_
    ) external override onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        require(block.timestamp >= registrationEndTimestamp, "IWW:I");

        purchaseRateInBP = purchaseRateInBP_;

        _setMerkleTreeWhiteList(linkToCSV_, root_);
        _setRangeAllocations(allocations_);
        allocationPerTicketInBuyToken = allocationPerTicketInBuyToken_;
        _setOpenRoundMaxAllocationInBuyToken(openRoundMaxAllocationInBuyToken_);

        IRandomGenerator(randomGenerator).requestRandom(address(this));
        uint256 estimatedTotalRaiseInBuyToken_;
        for (uint256 i; i < ranges.length; ++i) {
            Range storage _range = ranges[i];
            estimatedTotalRaiseInBuyToken_ += _range.registeredUserCount * _range.allocation;
        }
        estimatedTotalRaiseInBuyToken = estimatedTotalRaiseInBuyToken_;
    }

    function buy(BuyParams calldata buyParams_)
        external
        override
        nonReentrant
        requireKYC(buyParams_.signatures, buyParams_.signers)
        updateStakingPower(buyParams_.idsToUpdate)
    {
        require(block.timestamp >= startTimestamp && block.timestamp < openRound.maxEndTimestamp, "IWW:I");
        require(totalBoughtInToken < distributedAmountInToken, "IWW:I");
        bool isProofValid = isMerkleProofValid(
            buyParams_.proof,
            keccak256(abi.encodePacked(msg.sender, buyParams_.maxAllocationInBuyToken))
        );

        uint256 amountInToken = (buyParams_.amountInBuyToken * exclusiveRound.priceTokenPerBuyTokenInUQ) /
            UQ112x112.Q112;
        require(amountInToken > 0, "IWW:Z");
        uint256 maxAllocation;
        uint256 requiredAmountInBuyToken = buyParams_.amountInBuyToken;
        if (isProofValid) {
            // For whitelisted through MerkleTree
            maxAllocation =
                (buyParams_.maxAllocationInBuyToken * exclusiveRound.priceTokenPerBuyTokenInUQ) /
                UQ112x112.Q112;
            uint boughtInBuyToken = (amountOf[msg.sender] * UQ112x112.Q112) / exclusiveRound.priceTokenPerBuyTokenInUQ;
            if (buyParams_.maxAllocationInBuyToken > boughtInBuyToken) {
                uint maxAllocationInBuyToken = buyParams_.maxAllocationInBuyToken - boughtInBuyToken;
                if (maxAllocationInBuyToken < buyParams_.amountInBuyToken) {
                    requiredAmountInBuyToken = buyParams_.amountInBuyToken - maxAllocationInBuyToken;
                } else {
                    requiredAmountInBuyToken = 0;
                }
            }
        }
        maxAllocation += _getAllocation(buyParams_, isProofValid, amountInToken, requiredAmountInBuyToken);

        require((amountOf[msg.sender] + amountInToken) <= maxAllocation, "IWW:I");
        uint256 _totalBoughtInToken = totalBoughtInToken + amountInToken;
        require(_totalBoughtInToken <= distributedAmountInToken, "IWW:I");

        IERC20(buyToken).safeTransferFrom(msg.sender, _projectFundsHolder, buyParams_.amountInBuyToken);
        _addReferralsToReferralPool(msg.sender, buyParams_.amountInBuyToken);
        totalBoughtInToken = _totalBoughtInToken;
        amountOf[msg.sender] += amountInToken;
    }

    function info(address account_) external view override returns (InfoIDODetails memory _details) {
        IStaking.InfoAccountDetails memory stakingDetails = IStaking(staking).info(account_);
        (uint32 stakingPowerInitialBreak, uint32 participationBreak) = IStaking(staking).stakingPowerData();
        _details = InfoIDODetails({
            buyToken: buyToken,
            referralPool: referralPool,
            distributedAmountInToken: distributedAmountInToken,
            registrationStartTimestamp: registrationStartTimestamp,
            registrationEndTimestamp: registrationEndTimestamp,
            startTimestamp: startTimestamp,
            totalBoughtInToken: totalBoughtInToken,
            lotteryTicketsOfAccount: lotteryTicketsOf[account_],
            stakingPowerOfAccount: stakingDetails.accountDetails.totalStakingPower,
            amountOfAccountInToken: amountOf[account_],
            availableRewardToClaim: IPool(referralPool).balanceOf(account_),
            lastIDOParticipationOfAccount: stakingDetails.accountDetails.lastIDOParticipation,
            stakingPowerForOneTicket: stakingPowerForOneTicket,
            openRoundMinStakingPower: openRoundMinStakingPower,
            allocationPerTicketInBuyToken: allocationPerTicketInBuyToken,
            maxTicketsPerUser: maxTicketsPerUser,
            openRoundMaxAllocationInBuyToken: openRoundMaxAllocationInBuyToken,
            stakingPowerInitialBreak: stakingPowerInitialBreak,
            participationBreak: participationBreak,
            exclusiveRound: exclusiveRound,
            openRound: openRound,
            linkToCsv: linkToCSV
        });
    }

    function referrersInfoOf(address account_)
        external
        view
        returns (address referralPool_, Referrer[] memory referrers_)
    {
        referralPool_ = referralPool;
        EnumerableSet.AddressSet storage addresses = referrersAddressOf[account_];
        uint256 size = addresses.length();
        referrers_ = new Referrer[](size);
        for (uint256 i; i < size; ++i) {
            address address_ = addresses.at(i);
            referrers_[i] = Referrer(address_, referrersAmountOf[account_][address_]);
        }
    }

    function pricePerTokenInUQ() external view returns (uint256) {
        return openRound.priceTokenPerBuyTokenInUQ;
    }

    function victoryTicketsCount(address account_) public view override returns (uint256 count) {
        uint256 seed = IRandomGenerator(randomGenerator).seedOf(address(this));
        uint256 ticketCount = lotteryTicketsOf[account_];
        if (seed == 0 || ticketCount == 0) {
            return 0;
        }
        uint256 totalRaiseInBuyToken = (distributedAmountInToken * UQ112x112.Q112) /
            exclusiveRound.priceTokenPerBuyTokenInUQ;
        uint256 thresholdInBP = Math.min(
            BP.DECIMAL_FACTOR,
            (totalRaiseInBuyToken * BP.DECIMAL_FACTOR) /
                ((estimatedTotalRaiseInBuyToken * purchaseRateInBP) / BP.DECIMAL_FACTOR)
        );
        for (uint256 i; i < ticketCount; ++i) {
            uint256 randomInBP = uint256(keccak256(abi.encode(seed, account_, i))) % BP.DECIMAL_FACTOR;
            if (randomInBP <= thresholdInBP) {
                count++;
            }
        }
    }

    function isMerkleProofValid(bytes32[] calldata proof_, bytes32 leaf_) public view override returns (bool) {
        return MerkleProof.verify(proof_, root, leaf_);
    }

    function supportsInterface(bytes4 interfaceId_) public view virtual override returns (bool) {
        return interfaceId_ == type(IIDOWithWhitelist).interfaceId || super.supportsInterface(interfaceId_);
    }

    modifier requireKYC(bytes[] calldata signatures_, address[] calldata signers_) {
        bytes memory data = abi.encode(msg.sender, address(this));
        require(IWhitelist(whitelist).isAddressWhitelisted(data, signatures_, signers_), "IWW:I");
        _;
    }

    modifier updateStakingPower(uint256[] calldata idsToUpdate_) {
        if (idsToUpdate_.length > 0) {
            IStaking(staking).updateStakingPower(msg.sender, idsToUpdate_);
        }
        _;
    }

    /**
     * @inheritdoc UUPSUpgradeable
     */
    function _authorizeUpgrade(address contract_) internal view override onlyRole(DEFAULT_ADMIN_ROLE) {
        require(IERC165(contract_).supportsInterface(type(IIDOWithWhitelist).interfaceId), "IWW:I");
    }

    function _setMerkleTreeWhiteList(string calldata linkToCSV_, bytes32 root_) private {
        linkToCSV = linkToCSV_;
        root = root_;
        emit SetMerkleTreeWhiteList(linkToCSV_);
    }

    function _setDistributedAmountInToken(uint256 distributedAmountInToken_) private {
        distributedAmountInToken = distributedAmountInToken_;
        emit SetDistributedAmountInToken(msg.sender, distributedAmountInToken_);
    }

    function _setRegistrationEndTimestamp(uint32 registrationEndTimestamp_) private {
        require(registrationEndTimestamp_ > registrationStartTimestamp, "IWW:I");
        registrationEndTimestamp = registrationEndTimestamp_;
        emit SetRegistrationEndTimestamp(msg.sender, registrationEndTimestamp_);
    }

    function _setStartTimestamp(uint32 startTimestamp_) private {
        require(startTimestamp_ > registrationEndTimestamp, "IWW:I");
        startTimestamp = startTimestamp_;
        emit SetStartTimestamp(msg.sender, startTimestamp_);
    }

    function _setExclusiveRoundEnd(uint32 endTimestamp_) private {
        require(endTimestamp_ > startTimestamp, "IWW:I");
        exclusiveRound.maxEndTimestamp = endTimestamp_;
        emit SetExclusiveRoundEnd(msg.sender, endTimestamp_);
    }

    function _setOpenRoundEnd(uint32 endTimestamp_) private {
        require(endTimestamp_ >= exclusiveRound.maxEndTimestamp, "IWW:I");
        openRound.maxEndTimestamp = endTimestamp_;
        emit SetOpenRoundEnd(msg.sender, endTimestamp_);
    }

    function _setPrice(uint256 priceTokenPerBuyTokenInUQ_) private {
        require(priceTokenPerBuyTokenInUQ_ > 0, "IWW:I");
        exclusiveRound.priceTokenPerBuyTokenInUQ = priceTokenPerBuyTokenInUQ_;
        openRound.priceTokenPerBuyTokenInUQ = priceTokenPerBuyTokenInUQ_;
        emit SetPrice(msg.sender, priceTokenPerBuyTokenInUQ_);
    }

    function _setRangeAllocations(uint128[] calldata allocations_) private {
        require(allocations_.length == ranges.length, "IWW:I");
        for (uint256 i; i < allocations_.length; ++i) {
            ranges[i].allocation = allocations_[i];
        }
    }

    function _setOpenRoundMaxAllocationInBuyToken(uint256 openRoundMaxAllocationInBuyToken_) private {
        openRoundMaxAllocationInBuyToken = openRoundMaxAllocationInBuyToken_;
    }

    function _addReferralsToReferralPool(address account_, uint256 shares_) private {
        (address parent, address grandparent) = IReferrersData(referrersData).parentsOf(account_);
        _addReferralToReferralPool(account_, parent, shares_);
        _addReferralToReferralPool(account_, grandparent, shares_);
    }

    function _addReferralToReferralPool(
        address account_,
        address parent_,
        uint256 shares_
    ) private {
        address referrer = parent_ == address(0) ? _referrerBreakageFundsHolder : parent_;
        IPool(referralPool).mint(referrer, shares_);
        referrersAddressOf[account_].add(referrer);
        referrersAmountOf[account_][referrer] += shares_;
    }

    function _getAllocation(
        BuyParams calldata buyParams_,
        bool isProofValid_,
        uint256 amountInToken_,
        uint256 requiredAmountInBuyToken_
    ) private returns (uint256 _maxAllocation) {
        IStaking.InfoAccountDetails memory stakingDetails = IStaking(staking).info(msg.sender);
        uint256 stakingPower = stakingDetails.accountDetails.totalStakingPower;
        if (block.timestamp < exclusiveRound.maxEndTimestamp) {
            // if exclusive round
            uint256 requiredPower = (requiredAmountInBuyToken_ * stakingPowerForOneTicket) /
                allocationPerTicketInBuyToken;
            require(stakingPower >= requiredPower, "IWW:I");
            uint256 lotteryTickets = victoryTicketsCount(msg.sender);
            if (lotteryTickets > 0) {
                _maxAllocation =
                    ((lotteryTickets * allocationPerTicketInBuyToken) * exclusiveRound.priceTokenPerBuyTokenInUQ) /
                    UQ112x112.Q112;
                IStaking(staking).setLastParticipationDate(msg.sender, block.timestamp);
            }
            emit PrivateRoundBuy(msg.sender, buyParams_.amountInBuyToken, amountInToken_);
        } else {
            bool isEnoughStakingPower = stakingPower >= openRoundMinStakingPower;
            require(isEnoughStakingPower || isProofValid_, "IWW:I");
            if (isEnoughStakingPower) {
                _maxAllocation =
                    (openRoundMaxAllocationInBuyToken * openRound.priceTokenPerBuyTokenInUQ) /
                    UQ112x112.Q112;
            }
            emit PublicRoundBuy(msg.sender, buyParams_.amountInBuyToken, amountInToken_);
        }
    }
}
