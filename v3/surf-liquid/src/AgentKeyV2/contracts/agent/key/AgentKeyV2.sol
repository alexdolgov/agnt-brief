// SPDX-License-Identifier: Unlicense
pragma solidity =0.8.27;

import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "contracts/interfaces/IAgentNameService.sol";
import "contracts/interfaces/ITaxHandler.sol";
import "contracts/lib/AgentKeyToolkit.sol";
import "contracts/lib/Errors.sol";

contract AgentKeyV2 is ERC20BurnableUpgradeable, ReentrancyGuard {
    struct Cooldown {
        uint256 amount;
        uint64 claimableAt;
    }

    /// @dev Two week cooldown on unlocks
    uint256 private constant TWO_WEEKS = 14 days;
    IAgentNameService private immutable _agentNameService;
    address private immutable _factory;
    ITaxHandler public taxHandler;
    address public pair;
    address public sale;
    bool private _instantTransfer;
    mapping(address => uint256) private _membership;
    mapping(address => Cooldown[]) private _cooldowns;

    event Initialized();
    event PairUpdated(address pair);
    event FeesCollected(uint256 tokensSwapped, uint256 adminAmount, uint256 creatorAmount);
    event Subscribed(address indexed account, uint256 ak);
    event Unsubscribed(address indexed account, uint256 cooldownIndex, Cooldown cooldown);
    event MembershipTransferred(address indexed account, address indexed receiver, uint256 ak);
    event Claimed(address indexed account, uint256 cooldownIndex, Cooldown cooldown);
    event Cancelled(address indexed account, uint256 cooldownIndex, Cooldown cooldown);

    /// @param agentNameService_ Agent Name Service NFT address.
    constructor(IAgentNameService agentNameService_) {
        if (address(agentNameService_) == address(0)) revert Errors.InvalidAddress();
        _factory = msg.sender;
        _agentNameService = agentNameService_;
    }

    /**
     * @notice Initialize the Agent Key (only the Agent Key factory can call this function).
     * @param _sale Sale address.
     * @param _taxHandler Tax handler address.
     * @param name_ Name.
     * @param symbol_ Symbol.
     */
    function initialize(
        address _sale,
        address _taxHandler,
        string memory name_,
        string memory symbol_
    ) external initializer {
        /// @dev ensures no one can call the implementation contract
        if (msg.sender != _factory) revert Errors.Unauthorized();
        sale = _sale;
        taxHandler = ITaxHandler(_taxHandler);
        __ERC20_init(name_, symbol_);
        _mint(_sale, AgentKeyToolkit.INITIAL_REAL_TOKEN);
        emit Initialized();
    }

    /**
     * @notice Update the pair.
     * @param _pair Pair address.
     */
    function setPair(address _pair) external {
        if (msg.sender != sale) revert Errors.Unauthorized();
        pair = _pair;
        emit PairUpdated(_pair);
    }

    /**
     * @notice Become a member of the Agent Key by subscribing tokens to it.
     * @param _owner Owner of position.
     * @param _amount Amount of AK to subscribe (from msg.sender).
     */
    function subscribe(address _owner, uint256 _amount) external nonReentrant {
        if (_owner == address(0)) revert Errors.InvalidAddress();
        /// @dev no approvals required
        if (_amount == 0 || balanceOf(msg.sender) < _amount) revert Errors.InvalidAmount();
        _membership[_owner] += _amount;
        _update(msg.sender, address(this), _amount);
        emit Subscribed(_owner, _amount);
    }

    /**
     * @notice Unsubscribe tokens from the Agent Key, there is a 2 week cooldown then the user needs to call claim(uint256 _cooldownIndex).
     * @param _amount Amount of AK to unsubscribe.
     */
    function unsubscribe(uint256 _amount) external nonReentrant {
        if (_amount == 0 || _membership[msg.sender] < _amount) revert Errors.InvalidAmount();
        _membership[msg.sender] -= _amount;
        uint64 claimableAt = uint64(block.timestamp + TWO_WEEKS);
        Cooldown memory cooldown = Cooldown(_amount, claimableAt);
        uint256 cooldownIndex = _cooldowns[msg.sender].length;
        _cooldowns[msg.sender].push(cooldown);
        emit Unsubscribed(msg.sender, cooldownIndex, cooldown);
    }

    /**
     * @notice Transfer your membership to another address, you will no longer have access to these tokens.
     * @param _receiver Receiver of membership
     * @param _amount Amount of AK to transfer to _receiver.
     */
    function transferMembership(address _receiver, uint256 _amount) external nonReentrant {
        if (_receiver == address(0) || _receiver == msg.sender) revert Errors.InvalidAddress();
        if (_amount == 0 || _membership[msg.sender] < _amount) revert Errors.InvalidAmount();
        _membership[msg.sender] -= _amount;
        _membership[_receiver] += _amount;
        emit MembershipTransferred(msg.sender, _receiver, _amount);
    }

    /**
     * @notice Claim unsubscribed tokens after the 2 week cooldown ends.
     * @param _cooldownIndex Cooldown index.
     */
    function claim(uint256 _cooldownIndex) external nonReentrant {
        uint256 totalCooldowns = _cooldowns[msg.sender].length;
        if (totalCooldowns <= _cooldownIndex) revert Errors.InvalidIndex();
        Cooldown memory cooldown = _cooldowns[msg.sender][_cooldownIndex];
        if (block.timestamp < cooldown.claimableAt) revert Errors.PrematureExecution();
        _cooldowns[msg.sender][_cooldownIndex] = _cooldowns[msg.sender][totalCooldowns - 1];
        _cooldowns[msg.sender].pop();
        _update(address(this), msg.sender, cooldown.amount);
        emit Claimed(msg.sender, _cooldownIndex, cooldown);
    }

    /**
     * @notice Cancel a cooldown for unsubscribed tokens before the 2 week cooldown ends.
     * @param _cooldownIndex Cooldown index.
     */
    function cancel(uint256 _cooldownIndex) external nonReentrant {
        uint256 totalCooldowns = _cooldowns[msg.sender].length;
        if (totalCooldowns <= _cooldownIndex) revert Errors.InvalidIndex();
        Cooldown memory cooldown = _cooldowns[msg.sender][_cooldownIndex];
        if (cooldown.claimableAt <= block.timestamp) revert Errors.Unavailable();
        _cooldowns[msg.sender][_cooldownIndex] = _cooldowns[msg.sender][totalCooldowns - 1];
        _cooldowns[msg.sender].pop();
        _membership[msg.sender] += cooldown.amount;
        emit Cancelled(msg.sender, _cooldownIndex, cooldown);
    }

    /**
     * @notice Get the membership amount of a given user.
     * @param _user User address.
     * @return uint256 Amount of AK subscribed.
     */
    function getMembership(address _user) external view returns (uint256) {
        if (_user == address(0)) revert Errors.InvalidAddress();
        return _membership[_user];
    }

    /**
     * @notice Get the total cooldowns for a given user.
     * @param _user User address.
     * @return uint256 Total cooldowns.
     */
    function getTotalCooldowns(address _user) public view returns (uint256) {
        if (_user == address(0)) revert Errors.InvalidAddress();
        return _cooldowns[_user].length;
    }

    /**
     * @notice Get cooldown details for a given user and cooldown index.
     * @param _user User address.
     * @param _cooldownIndex Cooldown index.
     * @return Cooldown Cooldown details.
     */
    function getCooldown(
        address _user,
        uint256 _cooldownIndex
    ) external view returns (Cooldown memory) {
        if (getTotalCooldowns(_user) <= _cooldownIndex) revert Errors.InvalidIndex();
        return _cooldowns[_user][_cooldownIndex];
    }

    /**
     * @dev not need to override transferFrom like other Agent Keys because all tokens are
     * minted to the AgentKeyCuratedSale contract meaning no transfers are possible prior to launch
     */

    /**
     * @param _from From address.
     * @param _to To address.
     * @param _value Value.
     */
    function _update(address _from, address _to, uint256 _value) internal override {
        if (!_instantTransfer && _to == pair && pair != address(0)) {
            uint8 sellFeePercent = taxHandler.sellFeePercent();
            if (sellFeePercent > 0) {
                uint256 fee = (_value * sellFeePercent) / AgentKeyToolkit.PERCENT_DENOMINATOR;
                if (fee > 0) {
                    /**
                     * @dev AgentKey V1 handled token -> ETH fee swaps within the token contract itself.
                     * AgentKey V2 adds support for token -> token swaps (while still supporting token -> ETH).
                     * However, a "TaxHandler" contract is now used because Uniswap V2’s router does not allow
                     * the swap "receiver" to be part of the path in token -> token swaps.
                     */
                    super._update(_from, address(taxHandler), fee);
                    _handleFee(fee);
                }
                super._update(_from, _to, _value - fee);
                return;
            }
        }
        super._update(_from, _to, _value);
    }

    /// @param _fee Fee amount
    function _handleFee(uint256 _fee) private {
        _instantTransfer = true;
        uint256 baseAmount = taxHandler.swapToBase(_fee);
        _instantTransfer = false;
        (uint256 adminAmount, uint256 creatorAmount) = taxHandler.distributeBaseFee(baseAmount);
        emit FeesCollected(_fee, adminAmount, creatorAmount);
    }
}
