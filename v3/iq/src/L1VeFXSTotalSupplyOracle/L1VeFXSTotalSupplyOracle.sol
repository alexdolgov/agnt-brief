// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.8.0;


// src/contracts/VestedFXS-and-Flox/VestedFXS/OwnedV2.sol

// https://docs.synthetix.io/contracts/Owned
contract OwnedV2 {
    error OwnerCannotBeZero();
    error InvalidOwnershipAcceptance();
    error OnlyOwner();

    address public owner;
    address public nominatedOwner;

    constructor(address _owner) {
        // require(_owner != address(0), "Owner address cannot be 0");
        if (_owner == address(0)) revert OwnerCannotBeZero();
        owner = _owner;
        emit OwnerChanged(address(0), _owner);
    }

    function nominateNewOwner(address _owner) external onlyOwner {
        nominatedOwner = _owner;
        emit OwnerNominated(_owner);
    }

    function acceptOwnership() external {
        // require(msg.sender == nominatedOwner, "You must be nominated before you can accept ownership");
        if (msg.sender != nominatedOwner) revert InvalidOwnershipAcceptance();
        emit OwnerChanged(owner, nominatedOwner);
        owner = nominatedOwner;
        nominatedOwner = address(0);
    }

    modifier onlyOwner() {
        // require(msg.sender == owner, "Only the contract owner may perform this action");
        if (msg.sender != owner) revert OnlyOwner();
        _;
    }

    function _onlyOwner() internal view {
        if (msg.sender != owner) revert OnlyOwner();
    }

    event OwnerNominated(address newOwner);
    event OwnerChanged(address oldOwner, address newOwner);
}

// src/contracts/VestedFXS-and-Flox/VestedFXS/L1VeFXSTotalSupplyOracle.sol

/**
 * ====================================================================
 * |     ______                   _______                             |
 * |    / _____________ __  __   / ____(_____  ____ _____  ________   |
 * |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
 * |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
 * | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
 * |                                                                  |
 * ====================================================================
 * ===================== L1VeFXSTotalSupplyOracle =====================
 * ====================================================================
 * Bot-set Oracle for reporting the Ethereum Mainnet veFXS totalSupply() info.
 * Eventually plan to update L1VeFXS with a proof-based solution
 * Frax Finance: https://github.com/FraxFinance
 */

/* solhint-disable max-line-length, not-rely-on-time */

contract L1VeFXSTotalSupplyOracle is OwnedV2 {
    /// @notice The last veFXS totalSupply data point
    uint256 private totalSupplyStored;

    /// @notice The block on Mainnet when the veFXS totalSupply was read
    uint128 private blkWhenTotalSupplyRead;

    /// @notice The timestamp on Mainnet when the veFXS totalSupply was read
    uint128 private tsWhenTotalSupplyRead;

    /// @notice When the information was last updated by the bot
    uint256 public lastBotUpdate;

    /// @notice Address of the bot that is allowed to update the contract
    address public botAddress;

    /**
     * @notice Initialize contract
     * @param _owner The owner of this contract
     * @param _bot Address of the bot that is allowed to post
     * @param _initTtlSupplyStored Initial/seed value of totalSupplyStored
     * @param _initBlkWhenTotalSupplyRead Initial/seed value of blkWhenTotalSupplyRead
     * @param _initTsWhenTtlSupplyRead Initial/seed value of tsWhenTotalSupplyRead
     */
    constructor(
        address _owner,
        address _bot,
        uint256 _initTtlSupplyStored,
        uint128 _initBlkWhenTotalSupplyRead,
        uint128 _initTsWhenTtlSupplyRead
    ) OwnedV2(_owner) {
        // Set bot address
        botAddress = _bot;

        // Set seed values
        totalSupplyStored = _initTtlSupplyStored;
        blkWhenTotalSupplyRead = _initBlkWhenTotalSupplyRead;
        tsWhenTotalSupplyRead = _initTsWhenTtlSupplyRead;
        if (_initTsWhenTtlSupplyRead > 0) lastBotUpdate = _initTsWhenTtlSupplyRead;
    }

    /* ========== MODIFIERS ========== */

    modifier onlyByOwnBot() {
        require(msg.sender == owner || msg.sender == botAddress, "You are not the owner or the bot");
        _;
    }

    /* ============ VIEWS ============ */

    /// @notice Get the most recent totalSupply from Mainnet veFXS
    /// @param _totalSupply The last reported Mainnet veFXS totalSupply
    function totalSupply() external view returns (uint256 _totalSupply) {
        return totalSupplyStored;
    }

    /// @notice Get the most recent totalSupply from Mainnet veFXS along with the time it was read
    /// @param _totalSupply The last reported Mainnet veFXS totalSupply
    /// @param _blk Block when the totalSupply was read on Mainnet
    /// @param _ts Timestamp when the totalSupply was read on Mainnet
    function totalSupplyExtra() external view returns (uint256 _totalSupply, uint128 _blk, uint128 _ts) {
        return (totalSupplyStored, blkWhenTotalSupplyRead, tsWhenTotalSupplyRead);
    }

    // ==============================================================================
    // BOT FUNCTIONS
    // ==============================================================================

    /// @notice Set the most recent totalSupply from Mainnet veFXS
    /// @param _totalSupply The last reported Mainnet veFXS totalSupply
    /// @param _blk Block when the totalSupply was read on Mainnet
    /// @param _ts Timestamp when the totalSupply was read on Mainnet
    function updateInfo(uint256 _totalSupply, uint128 _blk, uint128 _ts) external onlyByOwnBot {
        totalSupplyStored = _totalSupply;
        blkWhenTotalSupplyRead = _blk;
        tsWhenTotalSupplyRead = _ts;
    }

    // ==============================================================================
    // RESTRICTED FUNCTIONS
    // ==============================================================================

    /// @notice Set the bot address
    /// @param _newBot The address of the timelock
    function setTimelock(address _newBot) external onlyOwner {
        botAddress = _newBot;
    }

    // ==============================================================================
    // EVENTS
    // ==============================================================================

    /// @notice When the veFXS info is updated
    /// @param totalSupply veFXS totalSupply from mainnet
    /// @param blk Block when the totalSupply was read on Mainnet
    /// @param ts Timestamp when the totalSupply was read on Mainnet
    event InfoUpdated(uint256 totalSupply, uint128 blk, uint128 ts);
}