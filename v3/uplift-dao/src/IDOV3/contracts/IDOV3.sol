// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.4;

import "openzeppelin-upgradeable4/security/ReentrancyGuardUpgradeable.sol";
import "openzeppelin-upgradeable4/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/utils/introspection/ERC165.sol";
import "./libraries/BP.sol";
import "./libraries/UQ112x112.sol";
import "./interfaces/IIDOV3.sol";
import "./interfaces/IStaking.sol";
import "./interfaces/IWhitelist.sol";
import "./interfaces/ILotteryInfo.sol";
import "./interfaces/IRandomGenerator.sol";
import "./interfaces/IReferrersData.sol";
import "./interfaces/IReferralPool.sol";
import "./interfaces/IPool.sol";

/// @title IDO contract (3nd version)
contract IDOV3 is IIDOV3, UUPSUpgradeable, ReentrancyGuardUpgradeable, ERC165 {

    using SafeERC20 for IERC20;

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;
    uint16 public constant REFERRAL_PERCENTAGE_VALUE = 500;
    uint16 public constant PURCHASE_RATE_IN_BP = 4_000;

    address public override registry;
    address public override staking;
    address public override buyToken;
    address public override referralPool;
    address public override referrersData;
    address public override whitelist;
    address public override lotteryInfo;
    address public override randomGenerator;
    address public override merkleTreeWhiteList;

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
    uint public override estimatedTotalRaiseInBuyToken;
    uint128 public override rangeStep;

    string linkToCSV;
    bytes32 root;

    mapping(address => uint) public override lotteryTicketsOf;
    mapping(address => uint) public override amountOf;

    Round public exclusiveRound;
    Round public openRound;
    Range[] public ranges;

    address private _projectFundsHolder;
    address private _referrerBreakageFundsHolder;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

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
            initializeParams.openRoundMinStakingPower != 0,
            "IDOV3: ZERO"
        );
        require(
            IERC165(initializeParams.whitelist).supportsInterface(type(IWhitelist).interfaceId) &&
            IERC165(initializeParams.lotteryInfo).supportsInterface(type(ILotteryInfo).interfaceId) &&
            IERC165(initializeParams.randomGenerator).supportsInterface(type(IRandomGenerator).interfaceId),
            "IDOV3: ADDRESS_NOT_SUPPORTED"
        );
        require(
            initializeParams.registrationEndTimestamp > initializeParams.registrationStartTimestamp && 
            initializeParams.startTimestamp > initializeParams.registrationEndTimestamp, 
            "IDOV3: INVALID_TIME"
        );

        __UUPSUpgradeable_init();
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
        maxTicketsPerUser = initializeParams.maxTicketsPerUser;
        openRoundMinStakingPower = initializeParams.openRoundMinStakingPower;
        rangeStep = initializeParams.rangeStep;

        for (uint i; i < initializeParams.ranges.length; ++i) {
            ranges.push(initializeParams.ranges[i]);
        }

        _setDistributedAmountInToken(initializeParams.distributedAmountInToken);
        _setRegistrationEndTimestamp(initializeParams.registrationEndTimestamp);
        _setStartTimestamp(initializeParams.startTimestamp);
        _setExclusiveRoundEnd(initializeParams.exclusiveRound.maxEndTimestamp);
        _setOpenRoundEnd(initializeParams.openRound.maxEndTimestamp);
        _setPrice(initializeParams.exclusiveRound.priceTokenPerBuyTokenInUQ);
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
            openRound: openRound,
            linkToCsv: linkToCSV
        });
    }

    /// @notice Set merkleTree address
    /// @param _linkToCSV Link to csv
    /// @param _root Root
    function setMerkleTreeWhiteList(string calldata _linkToCSV, bytes32 _root) external override onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        _setMerkleTreeWhiteList(_linkToCSV, _root);
    }

    /// @notice Set distributed amount
    /// @param _distributedAmountInToken Amount
    function setDistributedAmountInToken(uint _distributedAmountInToken) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _setDistributedAmountInToken(_distributedAmountInToken);
    }

    /// @notice Set registration end
    /// @param _registrationEndTimestamp End
    function setRegistrationEndTimestamp(uint _registrationEndTimestamp) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _setRegistrationEndTimestamp(_registrationEndTimestamp);
    }

    /// @notice Set IDO start
    /// @param _startTimestamp New IDO start
    function setStartTimestamp(uint _startTimestamp) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _setStartTimestamp(_startTimestamp);
    }

    /// @notice Set exclusive round end
    /// @param _endTimestamp New exclusive timestamp
    function setExclusiveRoundEnd(uint _endTimestamp) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _setExclusiveRoundEnd(_endTimestamp);
    }

    /// @notice Set open round end
    /// @param _endTimestamp New end timestamp
    function setOpenRoundEnd(uint _endTimestamp) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _setOpenRoundEnd(_endTimestamp);
    }

    /// @notice Set price
    /// @param _priceTokenPerBuyTokenInUQ New price
    function setPrice(uint _priceTokenPerBuyTokenInUQ) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _setPrice(_priceTokenPerBuyTokenInUQ);
    }

    /// @notice Set range allocations
    /// @param _allocations New allocations
    function setRangeAllocations(uint128[] calldata _allocations) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _setRangeAllocations(_allocations);
    }

    /// @notice Set open round max allocation
    /// @param _openRoundMaxAllocationInBuyToken New open round allocation
    function setOpenRoundMaxAllocationInBuyToken(uint _openRoundMaxAllocationInBuyToken) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setOpenRoundMaxAllocationInBuyToken(_openRoundMaxAllocationInBuyToken);
    }

    /// @notice Ask for unique seed and set data for the lottery. Only admin can call this function
    /// @param _linkToCSV Link to csv
    /// @param _root Root
    /// @param _allocations New allocations
    /// @param _openRoundMaxAllocationInBuyToken New open round allocation
    /// @param _allocationPerTicketInBuyToken New allocation per ticket
    function requestSeed(string calldata _linkToCSV, bytes32 _root, uint128[] calldata _allocations, uint _openRoundMaxAllocationInBuyToken, uint _allocationPerTicketInBuyToken) external override onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        require(block.timestamp >= registrationEndTimestamp, "IDOV3: INVALID_TIME");

        _setMerkleTreeWhiteList(_linkToCSV, _root);
        _setRangeAllocations(_allocations);
        allocationPerTicketInBuyToken = _allocationPerTicketInBuyToken;
        _setOpenRoundMaxAllocationInBuyToken(_openRoundMaxAllocationInBuyToken);

        IRandomGenerator(randomGenerator).requestRandom(address(this));
        uint estimatedTotalRaiseInBuyToken_;
        for (uint i; i < ranges.length; ++i) {
            Range storage _range = ranges[i];
            estimatedTotalRaiseInBuyToken_ += _range.registeredUserCount * _range.allocation;
        }
        estimatedTotalRaiseInBuyToken = estimatedTotalRaiseInBuyToken_;
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
        require(block.timestamp >= registrationStartTimestamp && block.timestamp < registrationEndTimestamp, "IDOV3: INVALID_TIME");
        require(lotteryTicketsOf[msg.sender] == 0, "IDOV3: ALREADY_REGISTERED");
        require(IStaking(staking).canParticipate(msg.sender), "IDOV3: CANNOT_PARTICIPATE");
        IStaking.InfoAccountDetails memory stakingDetails = IStaking(staking).info(msg.sender);
        uint tickets = Math.min(ILotteryInfo(lotteryInfo).lotteryTicketsForPower(stakingDetails.accountDetails.totalStakingPower), maxTicketsPerUser);
        require(tickets > 0, "IDOV3: NO_TICKETS");
        lotteryTicketsOf[msg.sender] = tickets;
        totalTickets += tickets;
        ++ranges[tickets * ILotteryInfo(lotteryInfo).stakingPowerForOneTicket() / rangeStep].registeredUserCount;
        IStaking(staking).setLastRegistrationDate(msg.sender, block.timestamp);
        emit Register(msg.sender, tickets);
    }

    /// @notice Unregister for an IDO
    function unregister() external override nonReentrant {
        require(block.timestamp < registrationEndTimestamp, "IDOV3: INVALID_TIME");
        uint userTickets = lotteryTicketsOf[msg.sender];
        require(userTickets > 0, "IDOV3: NO_REGISTRATION");

        lotteryTicketsOf[msg.sender] = 0;
        totalTickets -= userTickets;
        --ranges[userTickets * ILotteryInfo(lotteryInfo).stakingPowerForOneTicket() / rangeStep].registeredUserCount;
        IStaking(staking).setLastRegistrationDate(msg.sender, 0);
        emit Unregister(msg.sender);
    }

    /// @notice Buy tokens (in exclusive round - only if won in the lottery)
    /// @param _buyParams Buy params
    function buy(BuyParams calldata _buyParams) 
        external
        override
        nonReentrant 
        updateStakingPower(_buyParams.idsToUpdate)
    {
        require(block.timestamp >= startTimestamp && block.timestamp < openRound.maxEndTimestamp, "IDOV3: INVALID_TIME");
        require(totalBoughtInToken < distributedAmountInToken, "IDOV3: NO_TOKENS");

        bool isProofValid = isMerkleProofValid(
            _buyParams.proof,
            msg.sender,
            keccak256(abi.encodePacked(msg.sender, _buyParams.maxAllocationInBuyToken))
        );
        require(
            IWhitelist(whitelist).isAddressWhitelisted(
                abi.encode(msg.sender, address(this)),
                _buyParams.signatures,
                _buyParams.signers
            ) || isProofValid, "IDOV3: USER_SHOULD_PASS_KYC_OR_SHOULD_BE_WHITELISTED"
        );

        uint amountInToken;
        uint maxAllocation;

        if (isProofValid) { // for whitelisted through MerkleTree
            amountInToken = _buyParams.amountInBuyToken * exclusiveRound.priceTokenPerBuyTokenInUQ / UQ112x112.Q112;
            maxAllocation = _buyParams.maxAllocationInBuyToken * exclusiveRound.priceTokenPerBuyTokenInUQ / UQ112x112.Q112;
            if (block.timestamp < exclusiveRound.maxEndTimestamp) { // if exclusive round
                emit PrivateRoundBuy(msg.sender, _buyParams.amountInBuyToken, amountInToken);
            } else {
                emit PublicRoundBuy(msg.sender, _buyParams.amountInBuyToken, amountInToken);
            }
        } else {
            IStaking.InfoAccountDetails memory stakingDetails = IStaking(staking).info(msg.sender);
            uint stakingPower = stakingDetails.accountDetails.totalStakingPower;
            if (block.timestamp < exclusiveRound.maxEndTimestamp) { // if exclusive round
                uint lotteryTickets = victoryTicketsCount(msg.sender);
                uint requiredPower = _buyParams.amountInBuyToken * ILotteryInfo(lotteryInfo).stakingPowerForOneTicket() / allocationPerTicketInBuyToken;
                require(stakingPower >= requiredPower, "IDOV3: INVALID_STAKING_POWER");
                maxAllocation = (lotteryTickets * allocationPerTicketInBuyToken) * exclusiveRound.priceTokenPerBuyTokenInUQ / UQ112x112.Q112;
                amountInToken = _buyParams.amountInBuyToken * exclusiveRound.priceTokenPerBuyTokenInUQ / UQ112x112.Q112;
                IStaking(staking).setLastParticipationDate(msg.sender, block.timestamp);
                emit PrivateRoundBuy(msg.sender, _buyParams.amountInBuyToken, amountInToken);
            } else {
                require(stakingPower >= openRoundMinStakingPower, "IDOV3: INVALID_STAKING_POWER");
                maxAllocation = maxAllocationInToken;
                amountInToken = _buyParams.amountInBuyToken * openRound.priceTokenPerBuyTokenInUQ / UQ112x112.Q112;
                emit PublicRoundBuy(msg.sender, _buyParams.amountInBuyToken, amountInToken);
            }
        }

        require(amountInToken > 0, "IDOV3: TOKEN_AMOUNT_TOO_SMALL");
        require((amountOf[msg.sender] + amountInToken) <= maxAllocation, "IDOV3: ALLOCATION");
        uint _totalBoughtInToken = totalBoughtInToken + amountInToken;
        require(_totalBoughtInToken <= distributedAmountInToken, "IDOV3: MAX");

        IERC20(buyToken).safeTransferFrom(msg.sender, _projectFundsHolder, _buyParams.amountInBuyToken);
        _addReferralsToReferralPool(msg.sender, _buyParams.amountInBuyToken * REFERRAL_PERCENTAGE_VALUE / BP.DECIMAL_FACTOR);
        totalBoughtInToken = _totalBoughtInToken;
        amountOf[msg.sender] += amountInToken;
    }

    modifier onlyRole(bytes32 role) {
        require(IAccessControl(registry).hasRole(role, msg.sender), "IDOV3: FORBIDDEN");
        _;
    }

    modifier requireKYC(bytes[] calldata _signatures, address[] calldata _signers) {
        bytes memory data = abi.encode(msg.sender, address(this));
        require(IWhitelist(whitelist).isAddressWhitelisted(data, _signatures, _signers), "IDOV3: USER_SHOULD_PASS_KYC");
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
        if (seed == 0 || totalTickets == 0) {
            return 0;
        }
        uint ticketCount = lotteryTicketsOf[_account];
        uint totalRaiseInBuyToken = distributedAmountInToken * UQ112x112.Q112 / exclusiveRound.priceTokenPerBuyTokenInUQ;
        uint thresholdInBP = Math.min(BP.DECIMAL_FACTOR, totalRaiseInBuyToken * BP.DECIMAL_FACTOR / (estimatedTotalRaiseInBuyToken * PURCHASE_RATE_IN_BP / BP.DECIMAL_FACTOR));
        for (uint i; i < ticketCount; ++i) {
            uint randomInBP = uint(keccak256(abi.encode(seed, _account, i))) % BP.DECIMAL_FACTOR;
            if (randomInBP <= thresholdInBP) {
                count++;
            }
        }
    }

    function isMerkleProofValid(bytes32[] calldata _proof, address _account, bytes32 _leaf) public view override returns (bool) {
        return MerkleProof.verify(_proof, root, _leaf);
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

    function _setMerkleTreeWhiteList(string calldata _linkToCSV, bytes32 _root) private {
        linkToCSV = _linkToCSV;
        root = _root;
        emit SetMerkleTreeWhiteList(_linkToCSV);
    }

    function _setDistributedAmountInToken(uint _distributedAmountInToken) private {
        distributedAmountInToken = _distributedAmountInToken;
        emit SetDistributedAmountInToken(msg.sender, _distributedAmountInToken);
    }

    function _setRegistrationEndTimestamp(uint _registrationEndTimestamp) private {
        require(_registrationEndTimestamp > registrationStartTimestamp, "IDOV3: INVALID");
        registrationEndTimestamp = _registrationEndTimestamp;
        emit SetRegistrationEndTimestamp(msg.sender, _registrationEndTimestamp);
    }

    function _setStartTimestamp(uint _startTimestamp) private {
        require(_startTimestamp > registrationEndTimestamp, "IDOV3: INVALID");
        startTimestamp = _startTimestamp;
        emit SetStartTimestamp(msg.sender, _startTimestamp);
    }

    function _setExclusiveRoundEnd(uint _endTimestamp) private {
        require(_endTimestamp > startTimestamp, "IDOV3: INVALID");
        exclusiveRound.maxEndTimestamp = _endTimestamp;
        emit SetExclusiveRoundEnd(msg.sender, _endTimestamp);
    }

    function _setOpenRoundEnd(uint _endTimestamp) private {
        require(_endTimestamp >= exclusiveRound.maxEndTimestamp, "IDOV3: INVALID");
        openRound.maxEndTimestamp = _endTimestamp;
        emit SetOpenRoundEnd(msg.sender, _endTimestamp);
    }

    function _setPrice(uint _priceTokenPerBuyTokenInUQ) private {
        require(_priceTokenPerBuyTokenInUQ > 0, "IDOV3: INVALID");
        exclusiveRound.priceTokenPerBuyTokenInUQ = _priceTokenPerBuyTokenInUQ;
        openRound.priceTokenPerBuyTokenInUQ = _priceTokenPerBuyTokenInUQ;
        maxAllocationInToken = openRoundMaxAllocationInBuyToken * _priceTokenPerBuyTokenInUQ / UQ112x112.Q112;
        emit SetPrice(msg.sender, _priceTokenPerBuyTokenInUQ);
    }

    function _setOpenRoundMaxAllocationInBuyToken(uint _openRoundMaxAllocationInBuyToken) private {
        openRoundMaxAllocationInBuyToken = _openRoundMaxAllocationInBuyToken;
        maxAllocationInToken = _openRoundMaxAllocationInBuyToken * exclusiveRound.priceTokenPerBuyTokenInUQ / UQ112x112.Q112;
    }

    function _setRangeAllocations(uint128[] calldata _allocations) private {
        require(_allocations.length == ranges.length, "IDOV3: INVALID_LENGTH");
        for (uint i; i < _allocations.length; ++i) {
            ranges[i].allocation = _allocations[i];
        }
    }
 
}