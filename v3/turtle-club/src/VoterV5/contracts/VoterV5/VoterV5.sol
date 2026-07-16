// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

// Package Imports
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

// Local Imports
import {IBribe} from "./IBribe.sol";
import {IGauge} from "../interfaces/IGauge.sol";
import {IOptionTokenV3} from '../OptionToken/IOptionTokenV3.sol';
import {IMinter} from "../interfaces/IMinter.sol";
import {IPermissionsRegistry} from "../interfaces/IPermissionsRegistry.sol";
import {IVoterV5_GaugeLogic} from "./VoterV5_GaugeLogic.sol";
import {Constants} from "../Constants.sol";
import {VoterV5_Storage} from "./VoterV5_Storage.sol";
import {IVotingEscrowV2} from "./VotingEscrow/interfaces/IVotingEscrowV2.sol";
import {DelegateCallLib} from "../libraries/DelegateCallLib.sol";


contract VoterV5 is VoterV5_Storage, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    event GaugeCreated(
        address indexed gauge,
        address creator,
        address internal_bribe,
        address indexed external_bribe,
        address indexed pool
    );
    event GaugeKilled(address indexed gauge);
    event GaugeRevived(address indexed gauge);
    event Voted(address indexed voter, uint256 weight);
    event Abstained(address voter, uint256 weight);
    event NotifyReward(address indexed sender, address indexed reward, uint256 amount);
    event DistributeReward(address indexed sender, address indexed gauge, uint256 amount);
    event Whitelisted(address indexed whitelister, address indexed token);
    event WhitelistedPool(address indexed whitelister, address indexed token);
    event Blacklisted(address indexed blacklister, address indexed token);
    event Attach(address indexed owner, address indexed gauge, uint256 tokenId);
    event Detach(address indexed owner, address indexed gauge, uint256 tokenId);

    event SetMinter(address indexed old, address indexed latest);
    event SetOptions(address indexed old, address indexed latest);
    event SetDepositor(address indexed old, bool enabled);
    event SetBribeFactory(address indexed old, address indexed latest);
    event SetPairFactory(address indexed old, address indexed latest);
    event SetPermissionRegistry(address indexed old, address indexed latest);
    event SetGaugeFactory(address indexed old, address indexed latest);
    event SetBribeFor(bool isInternal, address indexed old, address indexed latest, address indexed gauge);
    event SetVoteDelay(uint256 old, uint256 latest);
    event AddFactories(address indexed pairfactory, address indexed gaugefactory);

    error InsufficientVotingPower();

    constructor() {}

    function initialize(
        address __ve,
        address _pairFactory,
        address _gaugeFactory,
        address _bribes,
        address _gaugeLogic
    ) public initializer {
        // __Ownable_init();
        __ReentrancyGuard_init();

        _ve = __ve;
        base = address(IVotingEscrowV2(__ve).token());

        _factories.push(_pairFactory);
        isFactory[_pairFactory]++;

        _gaugeFactories.push(_gaugeFactory);
        isGaugeFactory[_gaugeFactory] = true;

        bribefactory = _bribes;

        minter = msg.sender;
        permissionRegistry = msg.sender;

        VOTE_DELAY = 0;
        DURATION = Constants.EPOCH;
        MAX_VOTE_DELAY = Constants.EPOCH;

        initflag = false;

        gaugeLogic = IVoterV5_GaugeLogic(_gaugeLogic);
    }

    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    MODIFIERS
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */

    /// @dev Using function instead of modifier to save gas
    function VoterAdmin() private view {
        require(IPermissionsRegistry(permissionRegistry).hasRole("VOTER_ADMIN", msg.sender), "VOTER_ADMIN");
    }

    /// @dev Using function instead of modifier to save gas
    function Governance() private view {
        require(IPermissionsRegistry(permissionRegistry).hasRole("GOVERNANCE", msg.sender), "GOVERNANCE");
    }

    /// @notice initialize the voter contract
    /// @param  _tokens array of tokens to whitelist
    /// @param  _minter the minter of $lynx
    function _init(address[] memory _tokens, address _permissionsRegistry, address _minter, address _oLynx) external {
        require(msg.sender == minter || IPermissionsRegistry(permissionRegistry).hasRole("VOTER_ADMIN", msg.sender));
        require(!initflag);
        for (uint256 i = 0; i < _tokens.length; i++) {
            _whitelist(_tokens[i]);
        }
        minter = _minter;
        permissionRegistry = _permissionsRegistry;
        if (_oLynx != address(0)) {
            oLynx = _oLynx;
            /// @dev base must be approved to mint oLynx. 
            IERC20(base).approve(oLynx, type(uint256).max);
        }
        isGaugeDepositor[oLynx] = true;
        initflag = true;
    }

    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    VoterAdmin
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */

    /// @notice set vote delay in seconds
    function setVoteDelay(uint256 _delay) external {
        VoterAdmin();
        require(_delay != VOTE_DELAY, "already set");
        require(_delay <= MAX_VOTE_DELAY, "max delay");
        emit SetVoteDelay(VOTE_DELAY, _delay);
        VOTE_DELAY = _delay;
    }

    /// @notice Set a new Minter
    function setMinter(address _minter) external {
        VoterAdmin();
        require(_minter != address(0), "addr0");
        require(_minter.code.length > 0, "!contract");
        emit SetMinter(minter, _minter);
        minter = _minter;
    }

    /// @notice Set options token
    function setOptionsToken(address _oToken) external {
        VoterAdmin();
        require(_oToken.code.length > 0, "!contract");
        emit SetOptions(oLynx, _oToken);
        address oldToken = oLynx;
        if(oldToken != address(0)) IERC20(base).approve(oldToken, 0);
        isGaugeDepositor[oldToken] = false;
        oLynx = _oToken;
        IERC20(base).approve(oLynx, type(uint256).max);
        isGaugeDepositor[oLynx] = true;

        /// @dev this is to avoid gas limits. If this happens the function will need to be manually ran externally
        uint256 stop = pools.length < 100 ? pools.length : 100;
        if (pools.length > 0) refreshApprovals(0, stop, oldToken);
    }

    /// @notice revoke oldOtoken approval and include new one
    /// @param  start   start index point of the pools array
    /// @param  finish  finish index point of the pools array
    /// @param  _oldOtoken  token to revoke
    /// @dev    this function is manually used in case we have too many pools and gasLimit is reached
    function refreshApprovals(uint256 start, uint256 finish, address _oldOtoken) public nonReentrant {
        VoterAdmin();
        for (uint256 x = start; x < finish; x++) {
            _refreshApproval(gauges[pools[x]], _oldOtoken);
        }
    }

    function _refreshApproval(address _gauge, address _oldOtoken) internal {
        if(_oldOtoken != address(0)) {
            IERC20(_oldOtoken).approve(_gauge, 0);
        }
        if (oLynx == address(0)) {
            IERC20(base).approve(_gauge, type(uint256).max);
        } else {
            IERC20(oLynx).approve(_gauge, type(uint256).max);
            IERC20(base).approve(_gauge, 0);
        }
    }

    /// @notice Set depositor that can deposit locked token on behalf of user token
    function setGaugeDepositor(address _depositor, bool _enabled) external {
        VoterAdmin();
        isGaugeDepositor[_depositor] = _enabled;
        emit SetDepositor(_depositor, _enabled);
    }

    /// @notice Set a new Bribe Factory
    function setBribeFactory(address _bribeFactory) external {
        VoterAdmin();
        require(_bribeFactory.code.length > 0, "!contract");
        require(_bribeFactory != address(0), "addr0");
        emit SetBribeFactory(bribefactory, _bribeFactory);
        bribefactory = _bribeFactory;
    }

    /// @notice Set a new PermissionRegistry
    function setPermissionsRegistry(address _permissionRegistry) external {
        VoterAdmin();
        require(_permissionRegistry.code.length > 0, "!contract");
        require(_permissionRegistry != address(0), "addr0");
        emit SetPermissionRegistry(permissionRegistry, _permissionRegistry);
        permissionRegistry = _permissionRegistry;
    }

    /// @notice Set a new bribes for a given gauge
    function setNewBribes(address _gauge, address _internal, address _external) external {
        VoterAdmin();
        require(isGauge[_gauge], "!gauge");
        require(_gauge.code.length > 0, "!contract");
        _setInternalBribe(_gauge, _internal);
        _setExternalBribe(_gauge, _external);
    }

    /// @notice Set a new internal bribe for a given gauge
    function setInternalBribeFor(address _gauge, address _internal) external {
        VoterAdmin();
        require(isGauge[_gauge], "!gauge");
        _setInternalBribe(_gauge, _internal);
    }

    /// @notice Set a new External bribe for a given gauge
    function setExternalBribeFor(address _gauge, address _external) external {
        VoterAdmin();
        require(isGauge[_gauge], "!gauge");
        _setExternalBribe(_gauge, _external);
    }

    function _setInternalBribe(address _gauge, address _internal) private {
        require(_internal.code.length > 0, "!contract");
        emit SetBribeFor(true, internal_bribes[_gauge], _internal, _gauge);
        internal_bribes[_gauge] = _internal;
    }

    function _setExternalBribe(address _gauge, address _external) private {
        require(_external.code.length > 0, "!contract");
        emit SetBribeFor(false, internal_bribes[_gauge], _external, _gauge);
        external_bribes[_gauge] = _external;
    }

    function addFactory(address _pairFactory, address _gaugeFactory) external {
        VoterAdmin();
        require(_pairFactory != address(0), "addr0");
        require(_gaugeFactory != address(0), "addr0");
        require(!isGaugeFactory[_gaugeFactory], "gFact");
        require(_pairFactory.code.length > 0, "!contract");
        require(_gaugeFactory.code.length > 0, "!contract");

        _factories.push(_pairFactory);
        _gaugeFactories.push(_gaugeFactory);
        isFactory[_pairFactory]++;
        isGaugeFactory[_gaugeFactory] = true;
        emit AddFactories(_pairFactory, _gaugeFactory);
    }

    function replaceFactory(address _pairFactory, address _gaugeFactory, uint256 _pos) external {
        VoterAdmin();
        require(_pairFactory != address(0), "addr0");
        require(_gaugeFactory != address(0), "addr0");
        require(isGaugeFactory[_gaugeFactory], "!gFact");
        address oldPF = _factories[_pos];
        address oldGF = _gaugeFactories[_pos];
        isFactory[oldPF]--;
        isGaugeFactory[oldGF] = false;

        _factories[_pos] = (_pairFactory);
        _gaugeFactories[_pos] = (_gaugeFactory);
        isFactory[_pairFactory]++;
        isGaugeFactory[_gaugeFactory] = true;

        emit SetGaugeFactory(oldGF, _gaugeFactory);
        emit SetPairFactory(oldPF, _pairFactory);
    }

    function removeFactory(uint256 _pos) external {
        VoterAdmin();

        address oldPF = _factories[_pos];
        address oldGF = _gaugeFactories[_pos];

        require(isFactory[oldPF] > 0, "!fact");
        require(isGaugeFactory[oldGF], "!gFact");
        _factories[_pos] = address(0);
        _gaugeFactories[_pos] = address(0);
        isFactory[oldPF]--;
        isGaugeFactory[oldGF] = false;
        emit SetGaugeFactory(oldGF, address(0));
        emit SetPairFactory(oldPF, address(0));
    }

    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    GOVERNANCE
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */

    /// @notice Whitelist a token for gauge creation
    function whitelist(address[] memory _token) external {
        Governance();
        uint256 i = 0;
        for (i = 0; i < _token.length; i++) {
            _whitelist(_token[i]);
        }
    }

    function _whitelist(address _token) private {
        require(!isWhitelisted[_token], "in");
        require(_token.code.length > 0, "!contract");
        isWhitelisted[_token] = true;
        emit Whitelisted(msg.sender, _token);
    }

    /// @notice Whitelist a pool for gauge creation
    function whitelistPool(address[] memory _pool) external {
        Governance();
        uint256 i = 0;
        for (i = 0; i < _pool.length; i++) {
            _whitelistPool(_pool[i]);
        }
    }

    function _whitelistPool(address _token) private {
        require(!isWhitelistedPool[_token], "in");
        require(_token.code.length > 0, "!contract");
        isWhitelistedPool[_token] = true;
        emit WhitelistedPool(msg.sender, _token);
    }

    /// @notice Blacklist a malicious token
    function blacklist(address[] memory _token) external {
        Governance();
        uint256 i = 0;
        for (i = 0; i < _token.length; i++) {
            _blacklist(_token[i]);
        }
    }

    function _blacklist(address _token) private {
        require(isWhitelisted[_token], "out");
        isWhitelisted[_token] = false;
        emit Blacklisted(msg.sender, _token);
    }

    /// @notice Kill a malicious gauge
    /// @param  _gauge gauge to kill
    function killGauge(address _gauge) external {
        Governance();
        require(isAlive[_gauge], "killed");
        // disable allowance
        IERC20(base).approve(_gauge, 0);
        IERC20(oLynx).approve(_gauge, 0);
        // Return claimable back to minter
        uint256 _claimable = claimable[_gauge];
        if (_claimable > 0) {
            IERC20(base).safeTransfer(minter, _claimable);
            delete claimable[_gauge];
        }
        isAlive[_gauge] = false;
        claimable[_gauge] = 0;
        uint _time = _epochTimestamp();
        totalWeightsPerEpoch[_time] -= weightsPerEpoch[_time][poolForGauge[_gauge]];

        emit GaugeKilled(_gauge);
    }

    /// @notice Revive a malicious gauge
    /// @param  _gauge gauge to revive
    function reviveGauge(address _gauge) external {
        Governance();
        require(!isAlive[_gauge], "alive");
        require(isGauge[_gauge], "not a gauge");
        isAlive[_gauge] = true;
        // reset allowance
        IERC20(base).approve(_gauge, type(uint256).max);
        IERC20(oLynx).approve(_gauge, type(uint256).max);
        emit GaugeRevived(_gauge);
    }

    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    USER INTERACTION
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */

    /// @notice Reset the votes of a given TokenID
    function reset() external nonReentrant {
        address _voter = msg.sender;
        _voteDelay(_voter);
        _reset(_voter);
        lastVoted[_voter] = _epochTimestamp() + 1;
    }

    function _reset(address _voter) internal {
        address[] storage _poolVote = poolVote[_voter];
        uint256 _poolVoteCnt = _poolVote.length;
        uint256 _totalWeight = 0;
        uint256 _time = _epochTimestamp();
        bool votedInEpoch = lastVoted[_voter] > _time;

        for (uint256 i = 0; i < _poolVoteCnt; i++) {
            address _pool = _poolVote[i];
            uint256 _votes = votes[_voter][_pool];

            if (_votes != 0) {
                // if user last vote is < than epochTimestamp then votes are 0! IF not underflow occur
                if (votedInEpoch) weightsPerEpoch[_time][_pool] -= _votes;

                votes[_voter][_pool] -= _votes;

                IBribe(internal_bribes[gauges[_pool]]).withdraw(uint256(_votes), _voter);
                IBribe(external_bribes[gauges[_pool]]).withdraw(uint256(_votes), _voter);

                // if is alive remove _votes, else don't because we already done it in killGauge()
                if (isAlive[gauges[_pool]]) _totalWeight += _votes;

                emit Abstained(_voter, _votes);
            }
        }

        // if user last vote is < than epochTimestamp then _totalWeight is 0! IF not underflow occur
        if (lastVoted[_voter] < _time) _totalWeight = 0;

        totalWeightsPerEpoch[_time] -= _totalWeight;
        delete poolVote[_voter];
    }

    /// @notice Recast the saved votes of a given TokenID
    function poke() external nonReentrant {
        address _voter = msg.sender;
        _voteDelay(_voter);
        address[] memory _poolVote = poolVote[_voter];
        uint256 _poolCnt = _poolVote.length;
        uint256[] memory _weights = new uint256[](_poolCnt);

        for (uint256 i = 0; i < _poolCnt; i++) {
            _weights[i] = votes[_voter][_poolVote[i]];
        }

        _vote(_voter, _poolVote, _weights);
        lastVoted[_voter] = _epochTimestamp() + 1;
    }

    /// @notice Vote for pools
    /// @param  _poolVote   array of LPs addresses to vote  (eg.: [sAMM usdc-usdt   , sAMM busd-usdt, vAMM wbnb-the ,...])
    /// @param  _weights    array of weights for each LPs   (eg.: [10               , 90            , 45             ,...])
    function vote(address[] calldata _poolVote, uint256[] calldata _weights) external nonReentrant {
        _voteDelay(msg.sender);
        require(_poolVote.length == _weights.length, "Pool/Weights length !=");
        _vote(msg.sender, _poolVote, _weights);
        lastVoted[msg.sender] = _epochTimestamp() + 1;
    }

    function _vote(address _voter, address[] memory _poolVote, uint256[] memory _weights) internal {
        _reset(_voter);
        uint256 _poolCnt = _poolVote.length;
        uint256 _time = _epochTimestamp();
        uint256 _weight = IVotingEscrowV2(_ve).getPastVotes(_voter, _time);
        uint256 _totalVoteWeight = 0;
        uint256 _totalWeight = 0;
        uint256 _usedWeight = 0;

        for (uint i = 0; i < _poolCnt; i++) {
            if (isAlive[gauges[_poolVote[i]]]) _totalVoteWeight += _weights[i];
        }

        for (uint256 i = 0; i < _poolCnt; i++) {
            address _pool = _poolVote[i];
            address _gauge = gauges[_pool];

            if (isGauge[_gauge] && isAlive[_gauge]) {
                uint256 _poolWeight = (_weights[i] * _weight) / _totalVoteWeight;

                require(votes[_voter][_pool] == 0);
                if (_poolWeight == 0) revert InsufficientVotingPower();

                poolVote[_voter].push(_pool);
                weightsPerEpoch[_time][_pool] += _poolWeight;

                votes[_voter][_pool] += _poolWeight;

                IBribe(internal_bribes[_gauge]).deposit(uint256(_poolWeight), _voter);
                IBribe(external_bribes[_gauge]).deposit(uint256(_poolWeight), _voter);

                _usedWeight += _poolWeight;
                _totalWeight += _poolWeight;
                emit Voted(msg.sender, _poolWeight);
            }
        }
        /// @note shall we store when voting?
        // if (_usedWeight > 0) IVotingEscrowV2(_ve).voting(_voter);
        totalWeightsPerEpoch[_time] += _totalWeight;
    }

    /// @notice claim LP gauge rewards
    function claimRewards(address[] memory _gauges) external {
        for (uint256 i = 0; i < _gauges.length; i++) {
            IGauge(_gauges[i]).getReward(msg.sender);
        }
    }

    /// @notice claim bribes rewards given a TokenID
    function claimBribes(address[] memory _bribes, address[][] memory _tokens, uint256 _tokenId) external {
        require(IVotingEscrowV2(_ve).isApprovedOrOwner(msg.sender, _tokenId), "!approved/Owner");
        require(_bribes.length == _tokens.length, "Bribes/Tokens length !=");
        for (uint256 i = 0; i < _bribes.length; i++) {
            IBribe(_bribes[i]).getRewardForOwner(_tokenId, _tokens[i]);
        }
    }

    /// @notice claim fees rewards given a TokenID
    function claimFees(address[] memory _fees, address[][] memory _tokens, uint256 _tokenId) external {
        require(IVotingEscrowV2(_ve).isApprovedOrOwner(msg.sender, _tokenId), "!approved/Owner");
        require(_fees.length == _tokens.length, "Fee/Tokens length !=");
        for (uint256 i = 0; i < _fees.length; i++) {
            IBribe(_fees[i]).getRewardForOwner(_tokenId, _tokens[i]);
        }
    }

    /// @notice claim bribes rewards given an address
    function claimBribes(address[] memory _bribes, address[][] memory _tokens) external {
        require(_bribes.length == _tokens.length, "Bribes/Tokens length !=");
        for (uint256 i = 0; i < _bribes.length; i++) {
            IBribe(_bribes[i]).getRewardForAddress(msg.sender, _tokens[i]);
        }
    }

    /// @notice claim fees rewards given an address
    function claimFees(address[] memory _bribes, address[][] memory _tokens) external {
        require(_bribes.length == _tokens.length, "Fee/Tokens length !=");
        for (uint256 i = 0; i < _bribes.length; i++) {
            IBribe(_bribes[i]).getRewardForAddress(msg.sender, _tokens[i]);
        }
    }

    /// @notice check if user can vote
    function _voteDelay(address _voter) internal view {
        require(block.timestamp > lastVoted[_voter] + VOTE_DELAY && block.timestamp > _epochTimestamp(), "ERR: VOTE_DELAY");
    }

    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    GAUGE CREATION
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */
    /// @notice create multiple gauges
    function createGauges(
        address[] memory _pool,
        uint256[] memory _gaugeTypes
    ) external nonReentrant returns (address[] memory, address[] memory, address[] memory) {
        require(_pool.length == _gaugeTypes.length, "len mismatch");
        require(_pool.length <= 10, "max 10");
        address[] memory _gauge = new address[](_pool.length);
        address[] memory _int = new address[](_pool.length);
        address[] memory _ext = new address[](_pool.length);

        uint256 i = 0;
        for (i; i < _pool.length; i++) {
            (_gauge[i], _int[i], _ext[i]) = _createGauge(_pool[i], _gaugeTypes[i]);
        }
        return (_gauge, _int, _ext);
    }

    /// @notice create a gauge
    function createGauge(
        address _pool,
        uint256 _gaugeType
    ) external nonReentrant returns (address _gauge, address _internal_bribe, address _external_bribe) {
        (_gauge, _internal_bribe, _external_bribe) = _createGauge(_pool, _gaugeType);
    }

    /// @notice create a gauge
    /// @param  _pool       LP address
    /// @param  _gaugeType  the type of the gauge you want to create
    /// @dev Logic offloaded to VoterV5_GaugeLogic contract to bring contract size into 24kb range.
    ///   See gaugeLogic contract for more details.
    function _createGauge(
        address _pool,
        uint256 _gaugeType
    ) internal returns (address _gauge, address _internal_bribe, address _external_bribe) {
        (bool success, bytes memory initialResult) = address(gaugeLogic).delegatecall(
            abi.encodeWithSelector(IVoterV5_GaugeLogic.createGauge.selector, _pool, _gaugeType)
        );
        bytes memory result = DelegateCallLib.handleDelegateCallResult(success, initialResult);

        // Decode the result
        (_gauge, _internal_bribe, _external_bribe) = abi.decode(result, (address, address, address));

        emit GaugeCreated(_gauge, msg.sender, _internal_bribe, _external_bribe, _pool);
    }

    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    VIEW FUNCTIONS
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */

    /// @notice view the total length of the pools
    function length() external view returns (uint256) {
        return pools.length;
    }

    /// @notice view the total length of the voted pools given a tokenId
    function poolVoteLength(address voter) external view returns (uint256) {
        return poolVote[voter].length;
    }

    function factories() external view returns (address[] memory) {
        return _factories;
    }

    function factoryLength() external view returns (uint256) {
        return _factories.length;
    }

    function gaugeFactories() external view returns (address[] memory) {
        return _gaugeFactories;
    }

    function gaugeFactoriesLength() external view returns (uint256) {
        return _gaugeFactories.length;
    }

    function weights(address _pool) public view returns (uint256) {
        uint256 _time = _epochTimestamp();
        return weightsPerEpoch[_time][_pool];
    }

    function weightsAt(address _pool, uint256 _time) public view returns (uint256) {
        return weightsPerEpoch[_time][_pool];
    }

    function totalWeight() public view returns (uint256) {
        uint256 _time = _epochTimestamp();
        return totalWeightsPerEpoch[_time];
    }

    function totalWeightAt(uint256 _time) public view returns (uint256) {
        return totalWeightsPerEpoch[_time];
    }

    function _epochTimestamp() public view returns (uint256) {
        return IMinter(minter).active_period();
    }

    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    DISTRIBUTION
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */

    /// @notice notify reward amount for gauge
    /// @dev    the function is called by the minter each epoch. Anyway anyone can top up some extra rewards.
    /// @param  amount  amount to distribute
    function notifyRewardAmount(uint256 amount) external {
        require(msg.sender == minter, "!minter");
        IERC20(base).safeTransferFrom(msg.sender, address(this), amount);

        uint256 _totalWeight = totalWeightAt(_epochTimestamp() - Constants.EPOCH); // minter call notify after updates active_period, loads votes - 1 week

        uint256 _ratio = 0;

        if (_totalWeight > 0) _ratio = (amount * 1e18) / _totalWeight; // 1e18 adjustment is removed during claim
        if (_ratio > 0) {
            index += _ratio;
        }

        emit NotifyReward(msg.sender, base, amount);
    }

    /// @notice distribute the LP Fees to the internal bribes
    /// @param  _gauges  gauge address where to claim the fees
    /// @dev    the gauge is the owner of the LPs so it has to claim
    function distributeFees(address[] memory _gauges) external {
        for (uint256 i = 0; i < _gauges.length; i++) {
            if (isGauge[_gauges[i]] && isAlive[_gauges[i]]) {
                IGauge(_gauges[i]).claimFees();
            }
        }
    }

    /// @notice Distribute the emission for ALL gauges
    function distributeAll() external nonReentrant {
        IMinter(minter).update_period();

        uint256 x = 0;
        uint256 stop = pools.length;
        for (x; x < stop; x++) {
            _distribute(gauges[pools[x]]);
        }
    }

    /// @notice distribute the emission for N gauges
    /// @param  start   start index point of the pools array
    /// @param  finish  finish index point of the pools array
    /// @dev    this function is used in case we have too many pools and gasLimit is reached
    function distribute(uint256 start, uint256 finish) public nonReentrant {
        IMinter(minter).update_period();
        for (uint256 x = start; x < finish; x++) {
            _distribute(gauges[pools[x]]);
        }
    }

    /// @notice distribute reward onyl for given gauges
    /// @dev    this function is used in case some distribution fails
    function distribute(address[] memory _gauges) external nonReentrant {
        IMinter(minter).update_period();
        for (uint256 x = 0; x < _gauges.length; x++) {
            _distribute(_gauges[x]);
        }
    }

    /// @notice distribute the emission
    function _distribute(address _gauge) internal {
        uint256 lastTimestamp = gaugesDistributionTimestamp[_gauge];
        uint256 currentTimestamp = _epochTimestamp();
        if (lastTimestamp < currentTimestamp) {
            _updateForAfterDistribution(_gauge); // should set claimable to 0 if killed

            uint256 _claimable = claimable[_gauge];

            // distribute only if claimable is > 0, currentEpoch != lastepoch and gauge is alive
            if (_claimable > 0 && isAlive[_gauge]) {
                claimable[_gauge] = 0;
                gaugesDistributionTimestamp[_gauge] = currentTimestamp;
                /// @dev approvals set to MAX_UINT256 in _createGauge()
                if (oLynx != address(0)) {
                    IOptionTokenV3(oLynx).mint(address(this), _claimable);
                    IGauge(_gauge).notifyRewardAmount(oLynx, _claimable);
                } else {
                    IGauge(_gauge).notifyRewardAmount(base, _claimable);
                }
                emit DistributeReward(msg.sender, _gauge, _claimable);
            }
        }
    }

    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    HELPERS
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */

    /// @notice update info for gauges
    /// @dev    this function track the gauge index to emit the correct $lynx amount after the distribution
    function _updateForAfterDistribution(address _gauge) private {
        address _pool = poolForGauge[_gauge];
        uint256 _time = _epochTimestamp() - Constants.EPOCH;
        uint256 _supplied = weightsPerEpoch[_time][_pool];

        if (_supplied > 0) {
            uint256 _supplyIndex = supplyIndex[_gauge];
            uint256 _index = index; // get global index0 for accumulated distro
            supplyIndex[_gauge] = _index; // update _gauge current position to global position
            uint256 _delta = _index - _supplyIndex; // see if there is any difference that need to be accrued
            if (_delta > 0) {
                uint256 _share = (_supplied * _delta) / 1e18; // add accrued difference for each supplied token
                if (isAlive[_gauge]) {
                    claimable[_gauge] += _share;
                } else {
                    IERC20(base).safeTransfer(minter, _share); // send rewards back to Minter so they're not stuck in Voter
                }
            }
        } else {
            supplyIndex[_gauge] = index; // new users are set to the default global state
        }
    }

    function ve() external view returns (address) {
        return _ve;
    }
}
