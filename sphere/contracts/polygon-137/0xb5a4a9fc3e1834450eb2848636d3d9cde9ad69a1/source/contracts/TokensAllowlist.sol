// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;
import "./interfaces/IVoter.sol";
import "./GovernableImplementation.sol";
import "./ProxyImplementation.sol";

/**
 * @author Penrose
 * @title Token allowlist
 * @dev The purpose of this contract is to prevent griefing attacks on Dystopia bribe tokens
 * @dev Supports utilizing Dystopia's built-in whitelist
 * @dev Adds the ability to add new tokens that aren't in Dystopia's whitelist
 * @dev Adds the ability to disable Dystopia's whitelist both globally and per-token
 */
contract TokensAllowlist is GovernableImplementation, ProxyImplementation {
    /*******************************************************
     *                     Configuration
     *******************************************************/

    // Public addresses
    address public voterAddress;

    // Token mapping
    mapping(address => bool) tokenAllowed;
    mapping(address => bool) dystopiaTokenCheckDisabled;

    // Configuration
    bool public dystopiaAllowlistEnabled;
    uint256 public bribeTokensSyncPageSize;
    uint256 public bribeTokensNotifyPageSize;
    uint256 public bribeNotifyFrequency;
    uint256 public feeNotifyFrequency;
    mapping(address => bool) public feeClaimingDisabled;
    uint256 public bribeSyncLagLimit;
    uint256 public periodBetweenClaimDyst;
    uint256 public periodBetweenClaimFee;
    uint256 public periodBetweenClaimBribe;

    // Internal helpers
    IVoter voter;

    // Tokens allowed in pools
    mapping(address => bool) public tokenIsAllowedInPools;

    // Limit for out-of-gas on sync
    uint256 public oogLoopLimit;

    // Threshold for notifying DYST as rewards
    uint256 public notifyDystThreshold;

    // Operator for adjusting tokensAllowlist parameters
    mapping(address => bool) public operator;

    /**************************************************
     *                    Events
     **************************************************/
    event OperatorStatus(address indexed candidate, bool status);

    /**
     * @notice Initialize proxy storage
     */
    function initializeProxyStorage(address _voterAddress)
        public
        checkProxyInitialized
    {
        voterAddress = _voterAddress;
        voter = IVoter(voterAddress);
        dystopiaAllowlistEnabled = true;
        bribeTokensSyncPageSize = 1;
        bribeTokensNotifyPageSize = 1;
        bribeNotifyFrequency = 5;
        feeNotifyFrequency = 1;
        bribeSyncLagLimit = 5;
        periodBetweenClaimDyst = 86400 * 7;
        periodBetweenClaimFee = 86400 * 1;
        periodBetweenClaimBribe = 86400 * 1;
    }

    /**************************************************
     *                    Modifiers
     **************************************************/

    modifier onlyGovernanceOrOperator() {
        require(
            operator[msg.sender] || msg.sender == governanceAddress(),
            "Only the governance or operator may perform this action"
        );
        _;
    }

    /*******************************************************
     *                     View methods
     *******************************************************/

    /**
     * @notice Determine whether or not a token is allowed
     * @param tokenAddress Address of the token to check
     */
    function tokenIsAllowed(address tokenAddress) external view returns (bool) {
        if (
            dystopiaAllowlistEnabled && !dystopiaTokenCheckDisabled[tokenAddress]
        ) {
            bool tokenWhitelistedInDystopia = voter.isWhitelisted(tokenAddress);
            if (tokenWhitelistedInDystopia) {
                return true;
            }
        }
        return tokenAllowed[tokenAddress];
    }

    /**
     * @notice Return relative frequency between notifying bribes and fees
     * @param bribeFrequency frequency weight for notifying bribes
     * @param feeFrequency frequency weight for notifying fees
     */
    function notifyFrequency()
        external
        view
        returns (uint256 bribeFrequency, uint256 feeFrequency)
    {
        bribeFrequency = bribeNotifyFrequency;
        feeFrequency = feeNotifyFrequency;
    }

    /*******************************************************
     *                       Settings
     *******************************************************/

    /**
     * @notice Sets operator that can adjust tokensAllowlist parameters
     * @param candidate Address of candidate
     * @param status candidate operator status
     */
    function setOperator(address candidate, bool status)
        external
        onlyGovernance
    {
        operator[candidate] = status;
        emit OperatorStatus(candidate, status);
    }

    /**
     * @notice Set internal allowed state for a token
     * @param tokenAddress Address of the token
     * @param allowed If true token is allowed, if false the token is not allowed (unless it's allowed on Dystopia and Dystopia allowlist is enabled)
     */
    function setTokenAllowed(address tokenAddress, bool allowed)
        public
        onlyGovernanceOrOperator
    {
        tokenAllowed[tokenAddress] = allowed;
    }

    /**
     * @notice Batch set token allowlist states
     * @param tokensAddresses A list of token addresses
     * @param allowed True if allowed, false if not
     */
    function setTokensAllowed(address[] memory tokensAddresses, bool allowed)
        external
        onlyGovernanceOrOperator
    {
        for (
            uint256 tokenIndex;
            tokenIndex < tokensAddresses.length;
            tokenIndex++
        ) {
            setTokenAllowed(tokensAddresses[tokenIndex], allowed);
        }
    }

    /**
     * @notice Reward token allowed in pool or not states
     * @param tokenAddress Address of the token
     * @param allowed If true token is allowed, if false the token is not allowed (unless it's allowed on Dystopia and Dystopia allowlist is enabled)
     */
    function setTokenIsAllowedInPools(address tokenAddress, bool allowed)
        public
        onlyGovernanceOrOperator
    {
        tokenIsAllowedInPools[tokenAddress] = allowed;
    }

    /**
     * @notice Reward token allowed in pool or not states
     * @param tokensAddresses A list of token addresses
     * @param allowed True if allowed, false if not
     */
    function setTokenIsAllowedInPools(
        address[] memory tokensAddresses,
        bool allowed
    ) external onlyGovernanceOrOperator {
        for (
            uint256 tokenIndex;
            tokenIndex < tokensAddresses.length;
            tokenIndex++
        ) {
            setTokenIsAllowedInPools(tokensAddresses[tokenIndex], allowed);
        }
    }

    /**
     * @notice Disable Dystopia token whitelist mapping for a specific token
     * @param tokenAddress Address of the token
     * @param disabled If true, don't check the Dystopia allowlist for this token. If false, do check Dystopia for this token
     */
    function setDystopiaTokenCheckDisabled(address tokenAddress, bool disabled)
        public
        onlyGovernanceOrOperator
    {
        dystopiaTokenCheckDisabled[tokenAddress] = disabled;
    }

    /**
     * @notice Batch set Dystopia token check overrides
     * @param tokensAddresses A list of token addresses
     * @param disabledList A list of disabled states
     */
    function setDystopiaTokensCheckDisabled(
        address[] memory tokensAddresses,
        bool[] memory disabledList
    ) external onlyGovernanceOrOperator {
        assert(tokensAddresses.length == disabledList.length);
        for (
            uint256 tokenIndex;
            tokenIndex < tokensAddresses.length;
            tokenIndex++
        ) {
            setDystopiaTokenCheckDisabled(
                tokensAddresses[tokenIndex],
                disabledList[tokenIndex]
            );
        }
    }

    /**
     * @notice Set relative frequency between notifying bribes and fees
     * @param bribeFrequency frequency weight for notifying bribes
     * @param feeFrequency frequency weight for notifying fees
     */
    function setNotifyRelativeFrequency(
        uint256 bribeFrequency,
        uint256 feeFrequency
    ) external onlyGovernanceOrOperator {
        bribeNotifyFrequency = bribeFrequency;
        feeNotifyFrequency = feeFrequency;
    }

    /**
     * @notice Enable or disable using Dystopia as a source of truth for allowed tokens
     * @param enabled If True use Dystopia as a source for allowlist, if false, don't use Dystopia as a source
     */
    function setDystopiaAllowlistEnabled(bool enabled)
        external
        onlyGovernanceOrOperator
    {
        dystopiaAllowlistEnabled = enabled;
    }

    /**
     * @notice Set page size to be used by penPool sync mechanism
     * @param _bribeTokensSyncPageSize The number of tokens to sync per transaction
     */
    function setBribeTokensSyncPageSize(uint256 _bribeTokensSyncPageSize)
        external
        onlyGovernanceOrOperator
    {
        bribeTokensSyncPageSize = _bribeTokensSyncPageSize;
    }

    /**
     * @notice Set page size to be used by penPool bribe notify mechanism
     * @param _bribeTokensNotifyPageSize The number of tokens to notify per transaction
     */
    function setBribeTokensNotifyPageSize(uint256 _bribeTokensNotifyPageSize)
        external
        onlyGovernanceOrOperator
    {
        bribeTokensNotifyPageSize = _bribeTokensNotifyPageSize;
    }

    /**
     * @notice Set whether an individual pool's fee claiming is disabled
     * @param penPoolAddress The affected penPool address
     * @param disabled disables fee claiming
     */
    function setFeeClaimingDisabled(address penPoolAddress, bool disabled)
        external
        onlyGovernanceOrOperator
    {
        feeClaimingDisabled[penPoolAddress] = disabled;
    }

    /**
     * @notice Set lag size to be used by penPool bribe notify mechanism
     * @param _bribeSyncLagLimit The number of votes to sync per transaction
     */
    function setBribeSyncLagSize(uint256 _bribeSyncLagLimit)
        external
        onlyGovernanceOrOperator
    {
        bribeSyncLagLimit = _bribeSyncLagLimit;
    }

    /**
     * @notice Set time period between calls to voterProxy.claimDyst() in seconds
     * @param _periodBetweenClaimDyst time period between calls to voterProxy.claimDyst() in seconds
     */
    function setPeriodBetweenClaimDyst(uint256 _periodBetweenClaimDyst)
        external
        onlyGovernanceOrOperator
    {
        periodBetweenClaimDyst = _periodBetweenClaimDyst;
    }

    /**
     * @notice Set cooldown period for penPool to claim fees
     * @param _periodBetweenClaimFee cooldown period for penPool to claim fees
     */
    function setPeriodBetweenClaimFee(uint256 _periodBetweenClaimFee)
        external
        onlyGovernanceOrOperator
    {
        periodBetweenClaimFee = _periodBetweenClaimFee;
    }

    /**
     * @notice Set cooldown period for penPool to claim bribes
     * @param _periodBetweenClaimBribe cooldown period for penPool to claim bribes
     */
    function setPeriodBetweenClaimBribe(uint256 _periodBetweenClaimBribe)
        external
        onlyGovernanceOrOperator
    {
        periodBetweenClaimBribe = _periodBetweenClaimBribe;
    }

    /**
     * @notice Limit to prevent out-of-gas syncs
     * @param _oogLoopLimit loop limit that will start to cause out-of-gas txs
     */
    function setOogLoopLimit(uint256 _oogLoopLimit)
        external
        onlyGovernanceOrOperator
    {
        oogLoopLimit = _oogLoopLimit;
    }

    /**
     * @notice DYST threshold for calling notifying rewards
     * @param _notifyDystThreshold loop limit that will start to cause out-of-gas txs
     */
    function setNotifyDystThreshold(uint256 _notifyDystThreshold)
        external
        onlyGovernanceOrOperator
    {
        notifyDystThreshold = _notifyDystThreshold;
    }
}