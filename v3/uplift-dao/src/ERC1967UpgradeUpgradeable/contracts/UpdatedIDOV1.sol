// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

import "openzeppelin-upgradeable4/security/ReentrancyGuardUpgradeable.sol";
import "openzeppelin-upgradeable4/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/utils/introspection/ERC165Checker.sol";
import "./libraries/BP.sol";
import "./libraries/UQ112x112.sol";
import "./interfaces/IUpdatedIDOV1.sol";
import "./interfaces/IStaking.sol";
import "./interfaces/IWhitelist.sol";
import "./interfaces/ILotteryInfo.sol";
import "./interfaces/IRandomGenerator.sol";
import "./interfaces/IReferrersData.sol";
import "./interfaces/IReferralPool.sol";
import "./interfaces/IPool.sol";

/// @title IDO contract (1st version)
contract UpdatedIDOV1 is IUpdatedIDOV1, UUPSUpgradeable, ReentrancyGuardUpgradeable {

    using ERC165Checker for address;
    using SafeERC20 for IERC20;

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;

    address public override registry;
    address public override staking;
    address public override buyToken;
    address public override referralPool;
    address public override referrersData;
    address public override whitelist;
    address public override lotteryInfo;
    address public override randomGenerator;

    uint public override totalTickets;
    uint public override totalBoughtInToken;
    uint public override distributedAmountInToken;
    uint public override registrationStartTimestamp;
    uint public override registrationEndTimestamp;
    uint public override startTimestamp;
    uint public override maxTicketsPerUser;
    uint public override allocationPerTicketInBuyToken;
    uint public override openRoundMinStakingPower;
    uint public override openRoundMaxAllocationInBuyToken;
    uint public override maxAllocationInToken;
    uint32 public override placements;
    uint16 public override easeInBP;

    mapping(address => uint) public override lotteryTicketsOf;
    mapping(address => uint) public override amountOf;

    Round public exclusiveRound;
    Round public openRound;

    address private _projectFundsHolder;
    address private _referrerBreakageFundsHolder;

    /// @notice Initialize contract
    /// @param initializeParams Params for initialization
    function initialize(InitializeParams calldata initializeParams) initializer external {
        require(
            initializeParams.registry != address(0) &&
            initializeParams.staking != address(0) &&
            initializeParams.buyToken != address(0) &&
            initializeParams.projectFundsHolder != address(0) && 
            initializeParams.referrerBreakageFundsHolder != address(0) && 
            initializeParams.referralPool != address(0) &&
            initializeParams.referrersData != address(0) &&
            initializeParams.distributedAmountInToken != 0 &&
            initializeParams.registrationStartTimestamp != 0 &&
            initializeParams.registrationEndTimestamp != 0 &&
            initializeParams.startTimestamp != 0 &&
            initializeParams.maxTicketsPerUser != 0 &&
            initializeParams.openRoundMinStakingPower != 0 &&
            initializeParams.allocationPerTicketInBuyToken != 0 &&
            initializeParams.openRoundMaxAllocationInBuyToken != 0 &&
            initializeParams.placements > 0 && 
            initializeParams.easeInBP <= BP.DECIMAL_FACTOR,
            "IDOV1: ZERO"
        );
        require(
            initializeParams.whitelist.supportsInterface(type(IWhitelist).interfaceId) &&
            initializeParams.lotteryInfo.supportsInterface(type(ILotteryInfo).interfaceId) &&
            initializeParams.randomGenerator.supportsInterface(type(IRandomGenerator).interfaceId), 
            "IDOV1: ADDRESS_NOT_SUPPORTED"
        );
        require(
            initializeParams.registrationEndTimestamp > initializeParams.registrationStartTimestamp && 
            initializeParams.startTimestamp > initializeParams.registrationEndTimestamp, 
            "IDOV1: INVALID_TIME"
        );

        __ReentrancyGuard_init();

        registry = initializeParams.registry;
        staking = initializeParams.staking;
        buyToken = initializeParams.buyToken;
        _projectFundsHolder = initializeParams.projectFundsHolder;
        _referrerBreakageFundsHolder = initializeParams.referrerBreakageFundsHolder;
        referralPool = initializeParams.referralPool;
        whitelist = initializeParams.whitelist;
        referrersData = initializeParams.referrersData;
        lotteryInfo = initializeParams.lotteryInfo;
        randomGenerator = initializeParams.randomGenerator;
        distributedAmountInToken = initializeParams.distributedAmountInToken;
        registrationStartTimestamp = initializeParams.registrationStartTimestamp;
        registrationEndTimestamp = initializeParams.registrationEndTimestamp;
        startTimestamp = initializeParams.startTimestamp;
        maxTicketsPerUser = initializeParams.maxTicketsPerUser;
        openRoundMinStakingPower = initializeParams.openRoundMinStakingPower;
        allocationPerTicketInBuyToken = initializeParams.allocationPerTicketInBuyToken;
        openRoundMaxAllocationInBuyToken = initializeParams.openRoundMaxAllocationInBuyToken;
        placements = initializeParams.placements;
        easeInBP = initializeParams.easeInBP;

        exclusiveRound = initializeParams.exclusiveRound;
        openRound = initializeParams.openRound;

        maxAllocationInToken = initializeParams.openRoundMaxAllocationInBuyToken * initializeParams.openRound.priceTokenPerBuyTokenInUQ / UQ112x112.Q112;
    }

    /// @notice IDO info
    /// @param _account User's account
    /// @return _details Info
    function info(address _account) external view override returns (InfoIDODetails memory _details) {
        IStaking.InfoAccountDetails memory stakingDetails = IStaking(staking).info(_account);
        (uint32 stakingPowerInitialBreak, uint32 participationBreak) = IStaking(staking).stakingPowerData();
        _details = InfoIDODetails({
            buyToken: buyToken,
            referralPool: referralPool,
            distributedAmountInToken: distributedAmountInToken,
            registrationStartTimestamp: registrationStartTimestamp,
            registrationEndTimestamp: registrationEndTimestamp,
            startTimestamp: startTimestamp,
            totalBoughtInToken: totalBoughtInToken,
            lotteryTicketsOfAccount: lotteryTicketsOf[_account],
            stakingPowerOfAccount: stakingDetails.accountDetails.totalStakingPower,
            amountOfAccountInToken: amountOf[_account],
            availableRewardToClaim: IPool(referralPool).withdrawableRewardsOf(_account),
            lastIDOParticipationOfAccount: stakingDetails.accountDetails.lastIDOParticipation,
            stakingPowerForOneTicket: ILotteryInfo(lotteryInfo).stakingPowerForOneTicket(),
            openRoundMinStakingPower: openRoundMinStakingPower,
            allocationPerTicketInBuyToken: allocationPerTicketInBuyToken,
            maxTicketsPerUser: maxTicketsPerUser,
            openRoundMaxAllocationInBuyToken: openRoundMaxAllocationInBuyToken,
            stakingPowerInitialBreak: stakingPowerInitialBreak,
            participationBreak: participationBreak,
            exclusiveRound: exclusiveRound,
            openRound: openRound
        });
    }

    /// @notice Set ease in BP
    /// @param _easeInBP New ease in BP
    function setEaseInBP(uint16 _easeInBP) external override onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        require(_easeInBP <= BP.DECIMAL_FACTOR, "IDOV1: INVALID");
        require(IRandomGenerator(randomGenerator).seedOf(address(this)) == 0, "IDOV1: ALREADY_PLAYED");
        easeInBP = _easeInBP;
        emit SetEaseInBP(msg.sender, _easeInBP);
    }

    /// @notice Set open round end
    /// @param _endTimestamp New end timestamp
    function setOpenRoundEnd(uint _endTimestamp) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_endTimestamp >= exclusiveRound.maxEndTimestamp, "IDOV1: INVALID");
        openRound.maxEndTimestamp = _endTimestamp;
        emit SetOpenRoundEnd(msg.sender, _endTimestamp);
    }

    /// @notice Set price
    /// @param _priceTokenPerBuyTokenInUQ New price
    function setPrice(uint _priceTokenPerBuyTokenInUQ) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_priceTokenPerBuyTokenInUQ > 0, "IDOV1: INVALID");
        exclusiveRound.priceTokenPerBuyTokenInUQ = _priceTokenPerBuyTokenInUQ;
        openRound.priceTokenPerBuyTokenInUQ = _priceTokenPerBuyTokenInUQ;
        maxAllocationInToken = openRoundMaxAllocationInBuyToken * _priceTokenPerBuyTokenInUQ / UQ112x112.Q112;
        emit SetPrice(msg.sender, _priceTokenPerBuyTokenInUQ);
    }

    /// @notice Ask for unique seed. Only admin can call this function
    function requestSeed() external override onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        require(block.timestamp >= registrationEndTimestamp, "IDOV1: INVALID_TIME");
        IRandomGenerator(randomGenerator).requestRandom(address(this));
    }

    /// @notice IDO registration. User should pass KYC and has staking power in order to participate
    /// @param _registerParams Registration params
    function register(RegisterParams calldata _registerParams) 
        external
        override
        nonReentrant 
        requireKYC(_registerParams.signatures, _registerParams.signers)
        updateStakingPower(_registerParams.idsToUpdate)
    {
        require(block.timestamp >= registrationStartTimestamp && block.timestamp < registrationEndTimestamp, "IDOV1: INVALID_TIME");
        require(lotteryTicketsOf[msg.sender] == 0, "IDOV1: ALREADY_REGISTERED");
        require(IStaking(staking).canParticipate(msg.sender), "IDOV1: CANNOT_PARTICIPATE");
        IStaking.InfoAccountDetails memory stakingDetails = IStaking(staking).info(msg.sender);
        uint tickets = Math.min(ILotteryInfo(lotteryInfo).lotteryTicketsForPower(stakingDetails.accountDetails.totalStakingPower), maxTicketsPerUser);
        require(tickets > 0, "IDOV1: NO_TICKETS");
        lotteryTicketsOf[msg.sender] = tickets;
        totalTickets += tickets;
        IStaking(staking).setLastRegistrationDate(msg.sender, block.timestamp);
        emit Register(msg.sender, tickets);
    }

    /// @notice Unregister for an IDO
    function unregister() external override nonReentrant {
        require(block.timestamp < registrationEndTimestamp, "IDOV1: INVALID_TIME");
        uint userTickets = lotteryTicketsOf[msg.sender];
        require(userTickets > 0, "IDOV1: NO_REGISTRATION");

        lotteryTicketsOf[msg.sender] = 0;
        totalTickets -= userTickets;
        IStaking(staking).setLastRegistrationDate(msg.sender, 0);
        emit Unregister(msg.sender);
    }

    /// @notice Buy tokens (in exclusive round - only if won in the lottery)
    /// @param _buyParams Buy params
    function buy(BuyParams calldata _buyParams) 
        external
        override
        nonReentrant 
        requireKYC(_buyParams.signatures, _buyParams.signers)
        updateStakingPower(_buyParams.idsToUpdate)
    {
        require(block.timestamp >= startTimestamp && block.timestamp < openRound.maxEndTimestamp, "IDOV1: INVALID_TIME");
        require(totalBoughtInToken < distributedAmountInToken, "IDOV1: NO_TOKENS");

        IStaking.InfoAccountDetails memory stakingDetails = IStaking(staking).info(msg.sender);
        uint stakingPower = stakingDetails.accountDetails.totalStakingPower;

        uint amountInToken;
        uint maxAllocation;
        if (block.timestamp < exclusiveRound.maxEndTimestamp) { // if exclusive round
            uint lotteryTickets = victoryTicketsCount(msg.sender);
            uint requiredPower = _buyParams.amountInBuyToken * ILotteryInfo(lotteryInfo).stakingPowerForOneTicket() / allocationPerTicketInBuyToken;
            require(stakingPower >= requiredPower, "IDOV1: INVALID_STAKING_POWER");
            maxAllocation = (lotteryTickets * allocationPerTicketInBuyToken) * exclusiveRound.priceTokenPerBuyTokenInUQ / UQ112x112.Q112;
            amountInToken = _buyParams.amountInBuyToken * exclusiveRound.priceTokenPerBuyTokenInUQ / UQ112x112.Q112;
            IStaking(staking).setLastParticipationDate(msg.sender, block.timestamp);
        } else {
            require(stakingPower >= openRoundMinStakingPower, "IDOV1: INVALID_STAKING_POWER");
            maxAllocation = maxAllocationInToken;
            amountInToken = _buyParams.amountInBuyToken * openRound.priceTokenPerBuyTokenInUQ / UQ112x112.Q112;
        }

        require(amountInToken > 0, "IDOV1: TOKEN_AMOUNT_TOO_SMALL");
        require((amountOf[msg.sender] + amountInToken) <= maxAllocation, "IDOV1: ALLOCATION");
        uint _totalBoughtInToken = totalBoughtInToken + amountInToken;
        require(_totalBoughtInToken <= distributedAmountInToken, "IDOV1: MAX");

        IERC20(buyToken).safeTransferFrom(msg.sender, _projectFundsHolder, _buyParams.amountInBuyToken);
        _addReferralsToReferralPool(msg.sender, _buyParams.amountInBuyToken * 500 / BP.DECIMAL_FACTOR);
        totalBoughtInToken = _totalBoughtInToken;
        amountOf[msg.sender] += amountInToken;

        emit Buy(msg.sender, _buyParams.amountInBuyToken, amountInToken);
    }

    modifier onlyRole(bytes32 role) {
        require(IAccessControl(registry).hasRole(role, msg.sender), "IDOV1: FORBIDDEN");
        _;
    }

    modifier requireKYC(bytes[] calldata _signatures, address[] calldata _signers) {
        bytes memory data = abi.encode(msg.sender, address(this));
        require(IWhitelist(whitelist).isAddressWhitelisted(data, _signatures, _signers), "IDOV1: USER_SHOULD_PASS_KYC");
        _;
    }

    modifier updateStakingPower(uint[] calldata _idsToUpdate) {
        if (_idsToUpdate.length > 0) {
            IStaking(staking).updateStakingPower(msg.sender, _idsToUpdate);
        }
        _;
    }

    /// @notice Get number of tickets that won in the lottery
    /// @param _account User
    /// @return count Number of tickets
    function victoryTicketsCount(address _account) public override view returns (uint count) {
        uint seed = IRandomGenerator(randomGenerator).seedOf(address(this));
        if (seed == 0 || placements == 0 || totalTickets == 0) {
            return 0;
        }
        uint ticketCount = lotteryTicketsOf[_account];
        uint thresholdInBP = placements * BP.DECIMAL_FACTOR / totalTickets;
        thresholdInBP = Math.min(BP.DECIMAL_FACTOR, thresholdInBP * (BP.DECIMAL_FACTOR + easeInBP) / BP.DECIMAL_FACTOR);
        for (uint i; i < ticketCount; ++i) {
            uint randomInBP = uint(keccak256(abi.encode(seed, _account, i))) % BP.DECIMAL_FACTOR;
            if (randomInBP <= thresholdInBP) {
                count++;
            }
        }
    }

    function _authorizeUpgrade(address) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    function _addReferralsToReferralPool(address _account, uint _sharesToMint) private {
        (address parent, address grandparent) = IReferrersData(referrersData).parentsOf(_account);
        _addReferralToReferralPool(parent, _sharesToMint);
        _addReferralToReferralPool(grandparent, _sharesToMint);
    }

    function _addReferralToReferralPool(address _account, uint _sharesToMint) private {
        IPool(referralPool).mint(_account == address(0) ? _referrerBreakageFundsHolder : _account, _sharesToMint);
    }
}