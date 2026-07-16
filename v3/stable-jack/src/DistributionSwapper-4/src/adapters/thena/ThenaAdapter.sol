// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { IERC20 } from "openzeppelin/token/ERC20/IERC20.sol";
import { SafeERC20 } from "openzeppelin/token/ERC20/utils/SafeERC20.sol";
import { IRewardsDistributor } from "./interfaces/IRewardsDistributor.sol";
import { IVotingEscrow } from "./interfaces/IVotingEscrow.sol";
import { IVoter } from "./interfaces/IVoter.sol";
import { IMinter } from "./interfaces/IMinter.sol";
import { IAdapter, Adapter } from "src/libraries/Adapter.sol";
import { IRewardDistributor } from "src/interfaces/IRewardDistributor.sol";
import { IPuppeteer } from "src/interfaces/IPuppeteer.sol";
import { BaseAdapter, Marionette } from "src/adapters/BaseAdapter.sol";
import { IERC721Receiver } from "openzeppelin/token/ERC721/IERC721Receiver.sol";
import { IQuestRewardsDistributor } from "./interfaces/IQuestRewardsDistributor.sol";
import { ISwapper } from "./interfaces/ISwapper.sol";

/**
 * @title ThenaAdapter
 * @dev Marionette adapter for the Thena  protocol. It allows Puppeteer to manage veNFT tokens.
 * vote, claim and swap rewards, compound voting power, and manage lock duration.
 */
contract ThenaAdapter is BaseAdapter, IERC721Receiver {
    using SafeERC20 for IERC20;

    /**
     * @param active                     bool                  Whether or not the veNFT is active
     * @param initialEpoch               uint256               The initial epoch of the veNFT
     * @param lastTimestampExtended      uint256               The last timestamp the lock was extended
     * @param outstandingRewardsReceiver address               The address of the outstanding rewards receiver
     * @param rewardMode                 Marionette.RewardMode The reward mode of the veNFT
     * @param lockMode                   Marionette.LockMode   The lock mode of the veNFT
     */
    struct VeTokenInfo {
        bool active;
        uint256 initialEpoch;
        uint256 lastTimestampExtended;
        address outstandingRewardsReceiver;
        Marionette.RewardMode rewardMode;
        Marionette.LockMode lockMode;
        mapping(address => uint256) tokenLastEpochClaimed;
        mapping(Marionette.RewardMode => mapping(uint256 => uint256)) rewardModeEpochVotePower;
    }

    error InvalidInput();
    error InvalidLockEnd();
    error InvalidBalanceOfToken();
    error NotSubscribed();
    error NotApprovedOrOwner();
    error ZeroAmountReceived();
    error NotDistributorOrPuppeteer();
    error DepositFrozen();

    /*//////////////////////////////////////////////////////////////
                          EVENTS
    //////////////////////////////////////////////////////////////*/

    event Deposit(uint256 veNftId, Marionette.RewardMode rewardMode, Marionette.LockMode lockMode);
    event Withdraw(uint256 veNftId);
    event Subscribe(uint256 veNftId, Marionette.RewardMode rewardMode, Marionette.LockMode lockMode);
    event Unsubscribe(uint256 veNftId);
    event Vote(uint256 veNftId, uint256 balanceOfNFT);
    event SetSwapper(address swapper);
    event SetGaugesAndWeights(address[] gauges, uint256[] weights);
    event IncreaseAmount(uint256 veNftId, uint256 amount);
    event IncreaseUnlockTime(uint256 veNftId, uint256 lockDuration);
    event InitiateWithdraw(uint256 veNftId, address receiver);
    event EmergencyWithdraw(address[] tokens, uint256[] amounts, address receiver);
    event DepositPaused(bool paused);

    /*//////////////////////////////////////////////////////////////
                        ADAPTER STORAGE
    //////////////////////////////////////////////////////////////*/

    IVotingEscrow public constant VE = IVotingEscrow(0x1Ec2b9a77A7226ACD457954820197F89B3E3a578);
    IVoter public constant VOTER = IVoter(0x43739B96B19aE7C2E0d80BE7832325846f55Fa05);
    address public immutable THE;
    // Epoch duration
    uint256 internal constant EPOCH = 1 weeks;
    uint256 internal constant MAX_TIME = 52 * 7 * 86_400;

    mapping(uint256 => VeTokenInfo) public veTokenInfo;
    uint256 public minBalanceOfToken;
    address[] public gauges;
    uint256[] public weights;
    address public swapper;
    bool public depositPaused;

    /*//////////////////////////////////////////////////////////////
                               MODIFIERS
    //////////////////////////////////////////////////////////////*/

    modifier onlySwapperOrPuppeteer() {
        if (msg.sender != swapper && msg.sender != address(PUPPETEER)) revert NotDistributorOrPuppeteer();
        _;
    }

    /*//////////////////////////////////////////////////////////////
                      CONSTRUCTOR AND INITIALIZATION
    //////////////////////////////////////////////////////////////*/

    constructor(IPuppeteer _puppeteer, address initialTHE) BaseAdapter(_puppeteer) {
        THE = initialTHE;
    }

    function getAdapterCalls() public pure override returns (Adapter.Calls memory) {
        return Adapter.Calls({
            beforeTransfer: false,
            beforeSetDefaultConfig: true,
            beforeSetCustomConfig: true,
            beforeSwap: false,
            beforeClaim: false,
            beforePause: false
        });
    }

    /*//////////////////////////////////////////////////////////////
                      ADAPTER FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IAdapter
    /// @dev set default gauges and weights, default reward token, swapper, and minimum balance of the veNFT
    function beforeInitialize(
        address,
        Marionette.VoteConfig memory _defaultVoteConfig,
        Marionette.RewardConfig memory _defaultRewardConfig,
        Marionette.LockConfig memory,
        bytes calldata _adapterData
    ) external override onlyPuppeteer returns (bytes4) {
        // set default vote config
        _setGaugesAndWeights(_defaultVoteConfig.gauges, _defaultVoteConfig.weights);
        // set swapper address
        if (_defaultRewardConfig.data.length > 0) {
            (address _swapper) = abi.decode(_defaultRewardConfig.data, (address));
            _setSwapper(_swapper);
        }
        // set minBalanceOfToken
        (uint256 _minBalanceOfToken) = abi.decode(_adapterData, (uint256));
        minBalanceOfToken = _minBalanceOfToken;
        // approve VE to THE
        IERC20(THE).approve(address(VE), type(uint256).max);

        return IAdapter.beforeInitialize.selector;
    }

    /// @inheritdoc IAdapter
    function beforeTransfer(address _from, address _to, uint256 _tokenId, bytes calldata _adapterData)
        external
        override
        onlyPuppeteer
        returns (bytes4)
    {
        // On mint check reward config to deposit or subscribe
        if (_from == address(0)) {
            if (depositPaused) {
                revert DepositFrozen();
            }
            (Marionette.RewardConfig memory _rewardConfig, Marionette.LockConfig memory _lockConfig) =
                abi.decode(_adapterData, (Marionette.RewardConfig, Marionette.LockConfig));
            if (_rewardConfig.rewardMode == Marionette.RewardMode.VoteOnly) {
                // If the reward mode is VoteOnly, subscribe veNFT
                _subscribe(_tokenId, _rewardConfig.rewardMode, _lockConfig.lockMode);
            } else {
                // Otherwise, deposit veNFT
                _deposit(_to, _tokenId, _rewardConfig.rewardMode, _lockConfig.lockMode);
            }
        } else if (_to == address(0)) {
            // On burn, unsubscribe or withdraw veNFT
            if (veTokenInfo[_tokenId].rewardMode == Marionette.RewardMode.VoteOnly) {
                _unsubscribe(_tokenId);
            } else if (_canBurn(_tokenId)) {
                // If the token can be burned, withdraw it
                _withdraw(_from, _tokenId);
            } else {
                // Otherwise, initiate a withdrawal
                _initiateWithdrawal(_tokenId, _from);
            }
        }

        return IAdapter.beforeTransfer.selector;
    }

    /// @inheritdoc IAdapter
    function beforeSetDefaultConfig(
        address,
        Marionette.ConfigType calldata _configType,
        bytes calldata _configData,
        bytes calldata _adapterData
    ) external override onlyPuppeteer returns (bytes4) {
        (Marionette.VoteConfig memory _voteConfig, Marionette.RewardConfig memory _rewardConfig,) =
            abi.decode(_configData, (Marionette.VoteConfig, Marionette.RewardConfig, Marionette.LockConfig));

        if (_configType.reward) {
            // Update swapper address
            if (_rewardConfig.data.length > 0) {
                (address _swapper) = abi.decode(_rewardConfig.data, (address));
                _setSwapper(_swapper);
            }
        }
        if (_configType.vote) {
            // Update gauges and weights arrays
            _setGaugesAndWeights(_voteConfig.gauges, _voteConfig.weights);
        }
        // Update minimum balance of token
        if (_adapterData.length > 0) {
            (uint256 _minBalanceOfToken) = abi.decode(_adapterData, (uint256));
            minBalanceOfToken = _minBalanceOfToken;
        }

        return IAdapter.beforeSetDefaultConfig.selector;
    }

    /// @inheritdoc IAdapter
    function beforeSetCustomConfig(
        address _sender,
        uint256 _tokenId,
        Marionette.ConfigType calldata _configType,
        bytes calldata _configData,
        bytes calldata
    ) external override onlyPuppeteer returns (bytes4) {
        VeTokenInfo storage veInfo = veTokenInfo[_tokenId];

        (Marionette.RewardConfig memory _rewardConfig, Marionette.LockConfig memory _lockConfig) =
            abi.decode(_configData, (Marionette.RewardConfig, Marionette.LockConfig));

        if (_rewardConfig.rewardMode == Marionette.RewardMode.Custom) {
            revert InvalidInput();
        }

        if (_configType.reward) {
            // if current reward mode is VoteOnly and new reward mode is not VoteOnly, unsubscribe and deposit
            if (
                veInfo.rewardMode == Marionette.RewardMode.VoteOnly
                    && _rewardConfig.rewardMode != Marionette.RewardMode.VoteOnly
            ) {
                _unsubscribe(_tokenId);
                _deposit(_sender, _tokenId, _rewardConfig.rewardMode, veInfo.lockMode);
            } else if (
                !(
                    veInfo.rewardMode == Marionette.RewardMode.Compound
                        && _rewardConfig.rewardMode == Marionette.RewardMode.Default
                )
                    && !(
                        veInfo.rewardMode == Marionette.RewardMode.Default
                            && _rewardConfig.rewardMode == Marionette.RewardMode.Compound
                    )
            ) {
                revert InvalidInput();
            }
        }
        if (_configType.lock) {
            if (veInfo.lockMode != Marionette.LockMode.Max && _lockConfig.lockMode == Marionette.LockMode.Max) {
                veInfo.lockMode = _lockConfig.lockMode;
                _increaseUnlockTime(_tokenId);
            } else if (
                veInfo.lockMode != Marionette.LockMode.Maintain && _lockConfig.lockMode == Marionette.LockMode.Maintain
            ) {
                veInfo.lastTimestampExtended = block.timestamp;
                veInfo.lockMode = _lockConfig.lockMode;
            } else {
                veInfo.lockMode = _lockConfig.lockMode;
            }
        }
        if (_configType.vote || (!_configType.lock && !_configType.reward)) {
            revert InvalidInput();
        }

        return IAdapter.beforeSetCustomConfig.selector;
    }

    function setDepositPaused(bool _paused) public onlyPuppeteer {
        depositPaused = _paused;
        emit DepositPaused(_paused);
    }

    ///@inheritdoc IAdapter
    function execute(address, bytes calldata adapterData) external override returns (bytes4) {
        // Decode the function signature from adapterData
        (bytes4 functionSignature) = abi.decode(adapterData, (bytes4));
        // Call the appropriate function based on the decoded function signature
        if (functionSignature == this.voteMany.selector) {
            (, uint256[] memory tokenIds) = abi.decode(adapterData, (bytes4, uint256[]));
            voteMany(tokenIds);
        } else if (functionSignature == this.claimQuests.selector) {
            (, address distributor, address[] memory tokens, IQuestRewardsDistributor.ClaimParams[] memory claimsData) =
                abi.decode(adapterData, (bytes4, address, address[], IQuestRewardsDistributor.ClaimParams[]));
            claimQuests(distributor, tokens, claimsData);
        } else if (functionSignature == this.increaseMany.selector) {
            (, uint256[] memory _tokenIds, uint256[] memory _amounts, address _depositor, bool pullToken) =
                abi.decode(adapterData, (bytes4, uint256[], uint256[], address, bool));
            increaseMany(_tokenIds, _amounts, _depositor, pullToken);
        } else if (functionSignature == this.extendMany.selector) {
            (, uint256[] memory _tokenIds) = abi.decode(adapterData, (bytes4, uint256[]));
            extendMany(_tokenIds);
        } else if (functionSignature == this.emergencyWithdraw.selector) {
            (, address[] memory tokens, uint256[] memory amounts, address receiver) =
                abi.decode(adapterData, (bytes4, address[], uint256[], address));
            emergencyWithdraw(tokens, amounts, receiver);
        } else if (functionSignature == this.setDepositPaused.selector) {
            (, bool _paused) = abi.decode(adapterData, (bytes4, bool));
            setDepositPaused(_paused);
        } else {
            revert InvalidInput();
        }

        return IAdapter.execute.selector;
    }

    /**
     * @dev Vote for multiple tokens.
     * @param tokenIds An array of token IDs to vote for.
     */
    function voteMany(uint256[] memory tokenIds) public onlyPuppeteer {
        uint256 tokenIdsLength = tokenIds.length;
        for (uint256 i; i < tokenIdsLength; i++) {
            uint256 tokenId = tokenIds[i];
            if (veTokenInfo[tokenId].active) {
                // Check if the contract is approved or owner of the token
                if (!VE.isVotingApprovedOrOwner(address(this), tokenId)) {
                    // if not unsub
                    _unsubscribe(tokenId);
                } else {
                    _vote(tokenId);
                }
            }
        }
    }

    /**
     * @dev Claims bribes through rewards distributor and send them to the distributionswapper
     * @param distributor Address of the rewards distributor
     * @param tokens Array of tokens to claim
     * @param _claimsData Claim data for the quest merkle distributor
     */
    function claimQuests(
        address distributor,
        address[] memory tokens,
        IQuestRewardsDistributor.ClaimParams[] memory _claimsData
    ) public onlyPuppeteer {
        IQuestRewardsDistributor(distributor).multiClaim(address(this), _claimsData);

        uint256 length = tokens.length;
        for (uint256 i; i < length; ++i) {
            IERC20(tokens[i]).safeTransfer(swapper, _claimsData[i].amount);
        }
    }

    /**
     * @dev Deposits `_amount` additional tokens for `_tokenId` without modifying the unlock time
     * @param _tokenIds An array of token IDs to increase the balance of
     * @param _amounts An array of amounts to increase the balance of each corresponding token ID
     * @param _depositor The address of the depositor
     * @param pullToken Whether or not to pull the tokens from the depositor
     */
    function increaseMany(uint256[] memory _tokenIds, uint256[] memory _amounts, address _depositor, bool pullToken)
        public
        onlySwapperOrPuppeteer
    {
        uint256 tokenIdsLength = _tokenIds.length;

        if (pullToken) {
            uint256 totalAmount;
            // Get the total amount of THE to be increased
            for (uint256 i; i < tokenIdsLength; i++) {
                if (!veTokenInfo[_tokenIds[i]].active) revert NotSubscribed();
                totalAmount += _amounts[i];
            }

            // Transfer the total amount of THE to the contract
            IERC20(THE).safeTransferFrom(_depositor, address(this), totalAmount);
        }

        for (uint256 i; i < tokenIdsLength; i++) {
            _increaseAmount(_tokenIds[i], _amounts[i]);
        }
    }

    /**
     * @dev Extends the lock duration of multiple tokens to match the duration the user choose to maintain
     * Only tokens with a lock mode of `Maintain` will have their duration increased
     * @param _tokenIds An array of token IDs to extend the lock duration for
     */
    function extendMany(uint256[] memory _tokenIds) public onlyPuppeteer {
        uint256 tokenIdsLength = _tokenIds.length;

        // Loop through each token ID and extend the lock duration if the lock mode is Maintain
        for (uint256 i; i < tokenIdsLength; i++) {
            if (
                (
                    veTokenInfo[_tokenIds[i]].lockMode == Marionette.LockMode.Maintain
                        || veTokenInfo[_tokenIds[i]].lockMode == Marionette.LockMode.Max
                ) && veTokenInfo[_tokenIds[i]].active
            ) {
                _increaseUnlockTime(_tokenIds[i]);
            }
        }
    }

    /**
     * @dev Emergency withdraw of tokens
     */
    function emergencyWithdraw(address[] memory tokens, uint256[] memory amounts, address receiver)
        public
        onlyPuppeteer
    {
        uint256 tokensLength = tokens.length;
        for (uint256 i; i < tokensLength; i++) {
            IERC20(tokens[i]).safeTransfer(receiver, amounts[i]);
        }

        emit EmergencyWithdraw(tokens, amounts, receiver);
    }

    /*//////////////////////////////////////////////////////////////
                          VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Return whether or not a token can be burned
     * @param _tokenId The ID of the veNFT
     */
    function canBurn(uint256 _tokenId) public view returns (bool) {
        return _canBurn(_tokenId);
    }

    /*//////////////////////////////////////////////////////////////
                        ERC721 RECEIVER
    //////////////////////////////////////////////////////////////*/

    function onERC721Received(address, address, uint256, bytes calldata) external pure override returns (bytes4) {
        return IERC721Receiver.onERC721Received.selector;
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @dev Deposit `_amount` additional tokens for `_tokenId` without modifying the unlock time
     * @param _tokenId ID of the token to increase the amount of
     * @param _amount Amount of tokens to deposit and add to the lock
     */
    function _increaseAmount(uint256 _tokenId, uint256 _amount) internal {
        VE.increase_amount(_tokenId, _amount);

        emit IncreaseAmount(_tokenId, _amount);
    }

    /**
     * @dev Increases the unlock time of a token by a specified duration.
     * @param _tokenId The ID of the token to increase the unlock time for.
     */
    function _increaseUnlockTime(uint256 _tokenId) internal {
        VeTokenInfo storage veInfo = veTokenInfo[_tokenId];
        IVotingEscrow.LockedBalance memory lockedBalance = VE.locked(_tokenId);
        Marionette.LockMode lm = veInfo.lockMode;
        uint256 lastTimestampExtended = veInfo.lastTimestampExtended;
        uint256 lastExtendedEpoch = lastTimestampExtended / EPOCH;
        uint256 currentEpoch = block.timestamp / EPOCH;

        if (lastExtendedEpoch <= currentEpoch) {
            uint256 targetUnlockTime = (block.timestamp + MAX_TIME) / EPOCH * EPOCH;

            if (lm == Marionette.LockMode.Max && lockedBalance.end < targetUnlockTime) {
                uint256 lockDuration = targetUnlockTime - block.timestamp;

                VE.increase_unlock_time(_tokenId, lockDuration);

                emit IncreaseUnlockTime(_tokenId, lockDuration);
            } else if (lm == Marionette.LockMode.Maintain) {
                uint256 lockDuration = (lockedBalance.end - lastTimestampExtended) / EPOCH * EPOCH + EPOCH;
                if (lockDuration > MAX_TIME) {
                    if (lockedBalance.end < targetUnlockTime) {
                        lockDuration = targetUnlockTime - block.timestamp;
                    } else {
                        return;
                    }
                }

                veInfo.lastTimestampExtended = block.timestamp;

                VE.increase_unlock_time(_tokenId, lockDuration);

                emit IncreaseUnlockTime(_tokenId, lockDuration);
            }
        }
    }

    /**
     * @dev Vote using through VOTER.vote()
     * only votes is the user have not veted this epoch and the balance is greater than `minBalanceOfToken`
     * @param _tokenId Id of veNFT you are voting with.
     */
    function _vote(uint256 _tokenId) internal {
        uint256 balanceOfNFT = VE.balanceOfNFT(_tokenId);
        if (balanceOfNFT >= minBalanceOfToken) {
            VeTokenInfo storage veInfo = veTokenInfo[_tokenId];
            Marionette.RewardMode rm = veInfo.rewardMode;

            // if reward mode is not VoteOnly, update the total vote power for the active epoch
            // used to compute reward distribution
            if (rm != Marionette.RewardMode.VoteOnly) {
                uint256 activePeriod = _currentEpoch();
                veInfo.rewardModeEpochVotePower[rm][activePeriod] = balanceOfNFT;

                // if the veNFT has voted for the active epoch using another reward mode config
                // reset this vote power for the active epoch
                if (rm == Marionette.RewardMode.Compound) {
                    uint256 defaultVotePower =
                        veInfo.rewardModeEpochVotePower[Marionette.RewardMode.Default][activePeriod];
                    if (defaultVotePower > 0) {
                        veInfo.rewardModeEpochVotePower[Marionette.RewardMode.Default][activePeriod] = 0;
                    }
                }
                if (rm == Marionette.RewardMode.Default) {
                    uint256 compoundVotePower =
                        veInfo.rewardModeEpochVotePower[Marionette.RewardMode.Compound][activePeriod];
                    if (compoundVotePower > 0) {
                        veInfo.rewardModeEpochVotePower[Marionette.RewardMode.Compound][activePeriod] = 0;
                    }
                }
            }

            VOTER.vote(_tokenId, gauges, weights);

            emit Vote(_tokenId, balanceOfNFT);
        }
    }

    /**
     * @dev Deactivate veNFT and transfer it to the owner
     * @param _tokenId The ID of the veNFT
     * @param _owner The address of the veNFT owner
     */
    function _initiateWithdrawal(uint256 _tokenId, address _owner) internal {
        VeTokenInfo storage veInfo = veTokenInfo[_tokenId];
        veInfo.active = false;
        veInfo.outstandingRewardsReceiver = _owner;

        uint256 activePeriod = _currentEpoch();
        Marionette.RewardMode rm = veInfo.rewardMode;

        // clears vote power for the active epoch
        uint256 currVotePower = veInfo.rewardModeEpochVotePower[rm][activePeriod];
        if (currVotePower > 0) {
            veInfo.rewardModeEpochVotePower[rm][activePeriod] = 0;
        }

        // reset current vote to allow transfer
        VOTER.reset(_tokenId);
        // Transfer the veNFT back to owner
        VE.safeTransferFrom(address(this), _owner, _tokenId, "");

        emit InitiateWithdraw(_tokenId, _owner);
    }

    /**
     * @dev set swapper address
     */
    function _setSwapper(address _swapper) internal {
        swapper = _swapper;
        emit SetSwapper(_swapper);
    }

    /**
     * @dev require `_address` is approved to manage veNFT
     * @param _address address to check
     * @param _tokenId  veNFT id
     */
    function _isApprovedOrOwner(address _address, uint256 _tokenId) internal {
        if (!VE.isVotingApprovedOrOwner(_address, _tokenId)) revert NotApprovedOrOwner();
    }

    /**
     * @dev require ve position has enough lock duration left
     * @param _tokenId veNFT id
     */
    function _isAuthorizedBalanceAndDuration(uint256 _tokenId) internal view {
        IVotingEscrow.LockedBalance memory lockedBalance = VE.locked(_tokenId);
        if (lockedBalance.end <= (block.timestamp + EPOCH)) revert InvalidLockEnd();
        if (uint256(int256(lockedBalance.amount)) < minBalanceOfToken) revert InvalidBalanceOfToken();
    }

    /**
     * @dev get current epoch
     */
    function _currentEpoch() internal view returns (uint256) {
        return VOTER.currentPeriod();
    }

    /**
     * @dev Transfers veNFT this contract and record the user preferences
     * @param _owner The owner of the veNFT tokens
     * @param _tokenId The ID of the veNFT token being deposited
     * @param _rewardMode The reward mode selected by the subscriber
     * @param _lockMode The lock mode selected by the subscriber
     */
    function _deposit(
        address _owner,
        uint256 _tokenId,
        Marionette.RewardMode _rewardMode,
        Marionette.LockMode _lockMode
    ) internal {
        // check lock duration and balance requirements
        _isAuthorizedBalanceAndDuration(_tokenId);
        if (_rewardMode == Marionette.RewardMode.Custom) {
            revert InvalidInput();
        }

        if (_lockMode == Marionette.LockMode.Max) {
            _increaseUnlockTime(_tokenId);
        }

        // reset current vote to allow transfer
        if (VE.voted(_tokenId)) VOTER.reset(_tokenId);

        VE.safeTransferFrom(_owner, address(this), _tokenId, "");

        VeTokenInfo storage veInfo = veTokenInfo[_tokenId];

        // record subscriber veNFT preferences
        veInfo.active = true;
        veInfo.rewardMode = _rewardMode;
        veInfo.lockMode = _lockMode;
        veInfo.lastTimestampExtended = block.timestamp;
        veInfo.outstandingRewardsReceiver = address(0);
        if (veInfo.initialEpoch == 0) {
            veInfo.initialEpoch = _currentEpoch();
        }

        emit Deposit(_tokenId, _rewardMode, _lockMode);
    }

    /**
     * @dev Transfers the veNFT back to marionette owner
     * @param _owner The address of the owner of the veNFT token
     * @param _tokenId The ID of the veNFT token to be withdrawn
     */
    function _withdraw(address _owner, uint256 _tokenId) internal {
        if (veTokenInfo[_tokenId].active) {
            // reset current vote to allow transfer
            VOTER.reset(_tokenId);
            // Transfer the veNFT back to owner
            VE.safeTransferFrom(address(this), _owner, _tokenId, "");
        }

        delete veTokenInfo[_tokenId];

        emit Withdraw(_tokenId);
    }

    /**
     * @dev subscribe a veNFT by recording user preferences
     * @param _tokenId The ID of the veNFT to be subscriber
     * @param _rewardMode The reward mode for the subscriber
     * @param _lockMode The lock mode for the subscriber.
     */
    function _subscribe(uint256 _tokenId, Marionette.RewardMode _rewardMode, Marionette.LockMode _lockMode) internal {
        // check if sender is approved to manage veNFT
        _isApprovedOrOwner(address(this), _tokenId);
        // check lock duration and balance requirements
        _isAuthorizedBalanceAndDuration(_tokenId);
        if (_rewardMode == Marionette.RewardMode.Custom) {
            revert InvalidInput();
        }

        if (_lockMode == Marionette.LockMode.Max) {
            _increaseUnlockTime(_tokenId);
        }

        VeTokenInfo storage veInfo = veTokenInfo[_tokenId];

        veInfo.active = true;
        veInfo.rewardMode = _rewardMode;
        veInfo.lockMode = _lockMode;
        veInfo.initialEpoch = _currentEpoch();
        veInfo.lastTimestampExtended = block.timestamp;

        emit Subscribe(_tokenId, _rewardMode, _lockMode);
    }

    /**
     * @dev Unsubscribes a veNFT and claims rewards if any
     * @param _tokenId The ID of the veNFT
     */
    function _unsubscribe(uint256 _tokenId) internal {
        // delete veNFT preferences
        delete veTokenInfo[_tokenId];

        emit Unsubscribe(_tokenId);
    }

    /**
     * @dev Sets the gauges and weights for the adapter.
     * @param _gauges An array of gauge addresses.
     * @param _weights An array of gauge weights.
     */
    function _setGaugesAndWeights(address[] memory _gauges, uint256[] memory _weights) internal {
        // Check that the length of `_gauges` and `_weights` are the same
        if (_gauges.length != _weights.length) revert InvalidInput();

        gauges = _gauges;
        weights = _weights;

        emit SetGaugesAndWeights(_gauges, _weights);
    }

    /**
     * @dev Return whether or not a token can be burned
     * @param _tokenId The ID of the veNFT
     */
    function _canBurn(uint256 _tokenId) internal view returns (bool) {
        uint256 lastEpoch = _currentEpoch() - 1;

        VeTokenInfo storage veInfo = veTokenInfo[_tokenId];

        uint256 tokenVotesLastEpoch = veInfo.rewardModeEpochVotePower[Marionette.RewardMode.Compound][lastEpoch]
            + veInfo.rewardModeEpochVotePower[Marionette.RewardMode.Default][lastEpoch];

        uint256 tokenVotesEpochMinus2 = veInfo.rewardModeEpochVotePower[Marionette.RewardMode.Compound][lastEpoch - 1]
            + veInfo.rewardModeEpochVotePower[Marionette.RewardMode.Default][lastEpoch - 1];

        // if token is vote only return true
        // if token has voted last epoch return false (cant claim)
        // if token has not voted voted 2 epochs ago
        // or rewards from two epoch ago have been claimed return true
        bool isVoteOnly = veInfo.rewardMode == Marionette.RewardMode.VoteOnly;
        bool hasVotedLastEpoch = tokenVotesLastEpoch > 0;
        bool hasNotVotedEpochMinus2 = tokenVotesEpochMinus2 == 0;

        return isVoteOnly || (!hasVotedLastEpoch && hasNotVotedEpochMinus2);
    }
}

