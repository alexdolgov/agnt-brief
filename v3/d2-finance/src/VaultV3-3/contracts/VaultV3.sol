// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@layerzerolabs/oft-evm/contracts/OFTCore.sol";

contract VaultV3 is ERC4626, Ownable, OFTCore {
    uint256 public constant MAX_EPOCH_DURATION = 3650 days;
    uint256 public constant MIN_FUNDING_DURATION = 0 hours;
    bytes32 internal constant ADMIN_ROLE = 0x00;
    bytes32 internal constant EXECUTOR_ROLE = keccak256("EXECUTOR_ROLE");

    address public trader;
    address public whitelistAsset;
    uint256 public whitelistBalance;
    uint256 public maxDeposits;
    bool public started;
    bool public custodied;
    uint256 public custodiedAmount;
    uint256 public totalDeposits;
    uint256 internal epochId;
    mapping(uint256 => Epoch) public epochs;
    mapping(address => bool) public whitelisted;

    struct Epoch {
        uint80 fundingStart;
        uint80 epochStart;
        uint80 epochEnd;
    }

    event EpochStarted(uint256 indexed epoch, uint256 fundingStart, uint256 epochStart, uint256 epochEnd);
    event FundsCustodied(uint256 indexed epoch, uint256 amount);
    event FundsReturned(uint256 indexed epoch, uint256 amount);
    event NewMaxDeposits(uint256 oldMax, uint256 newMax);
    event NewWhitelistStatus(address indexed user, bool status);

    constructor(
        address _strategy,
        address _owner,
        address _trader,
        address _depositor,
        address _asset,
        string memory _name,
        string memory _symbol,
        uint256 _maxDeposits,
        address _whitelistAsset,
        uint256 _whitelistBalance,
        address _lzEndpoint,
        uint80 dateDeposits,
        uint80 dateTrading,
        uint80 dateEnd
    ) ERC4626(IERC20(_asset)) ERC20(_name, _symbol) OFTCore(IERC20Metadata(_asset).decimals(), _lzEndpoint, _owner) {
        maxDeposits = _maxDeposits;
        whitelistAsset = _whitelistAsset;
        whitelistBalance = _whitelistBalance;

        IStrategy s = IStrategy(_strategy);
        s.claim();
        s.setFeeReceiver(_trader);
        s.setVault(address(this), _asset);
        s.grantRole(ADMIN_ROLE, _owner);
        s.grantRole(EXECUTOR_ROLE, _owner);
        s.grantRole(ADMIN_ROLE, _trader);
        s.grantRole(EXECUTOR_ROLE, _trader);
        s.renounceRole(ADMIN_ROLE);
        s.renounceRole(EXECUTOR_ROLE);
        setTrader(_strategy);
        setWhitelistStatus(_depositor, true);
        startEpoch(dateDeposits, dateTrading, dateEnd);
        transferOwnership(_owner);
    }

    modifier onlyTrader() {
        require(msg.sender == trader, "!trader");
        _;
    }

    modifier notCustodied() {
        require(!custodied, "custodied");
        _;
    }

    modifier duringFunding() {
        Epoch storage epoch = epochs[epochId];
        require(uint80(block.timestamp) >= epoch.fundingStart && uint80(block.timestamp) < epoch.epochStart, "!funding");
        _;
    }

    modifier notDuringEpoch() {
        Epoch storage epoch = epochs[epochId];
        require(uint80(block.timestamp) < epoch.epochStart || uint80(block.timestamp) >= epoch.epochEnd, "during");
        _;
    }

    modifier duringEpoch() {
        Epoch storage epoch = epochs[epochId];
        require(uint80(block.timestamp) >= epoch.epochStart && uint80(block.timestamp) < epoch.epochEnd, "!during");
        _;
    }

    modifier onlyWhitelisted() {
        bool holder = false;
        if (whitelistAsset != address(0)) {
            holder = IERC20(whitelistAsset).balanceOf(msg.sender) > whitelistBalance;
        }
        require(whitelisted[msg.sender] || holder, "!whitelisted");
        _;
    }

    // OWNER

    function startEpoch(uint80 _fundingStart, uint80 _epochStart, uint80 _epochEnd) public onlyOwner notDuringEpoch {
        require(trader != address(0), "!trader");
        require(!started || !custodied, "!allowed");
        require(
            _epochEnd > _epochStart && _epochStart >= _fundingStart + MIN_FUNDING_DURATION && _fundingStart >= uint80(block.timestamp - 1 days),
            "!timing"
        );
        require(_epochEnd <= _epochStart + MAX_EPOCH_DURATION, "!epochLen");

        epochId++;
        uint256 currentEpoch = getCurrentEpoch();
        Epoch storage epoch = epochs[currentEpoch];

        epoch.fundingStart = _fundingStart;
        epoch.epochStart = _epochStart;
        epoch.epochEnd = _epochEnd;

        started = true;

        emit EpochStarted(currentEpoch, _fundingStart, _epochStart, _epochEnd);
    }

    function setMaxDeposits(uint256 _newMax) external onlyOwner {
        emit NewMaxDeposits(maxDeposits, _newMax);
        maxDeposits = _newMax;
    }

    function setWhitelistAsset(address _whitelistAsset) external onlyOwner {
        whitelistAsset = _whitelistAsset;
    }

    function setWhitelistBalance(uint256 _whitelistBalance) external onlyOwner {
        whitelistBalance = _whitelistBalance;
    }

    function setWhitelistStatus(address _user, bool _status) public onlyOwner {
        _modifyWhitelist(_user, _status);
    }

    function setWhitelistStatuses(address[] calldata _users, bool[] calldata _statuses) external onlyOwner {
        uint256 len = _users.length;
        require(_statuses.length == len, "!len");

        for (uint256 i; i < len; ++i) {
            _modifyWhitelist(_users[i], _statuses[i]);
        }
    }

    function _modifyWhitelist(address _user, bool _status) internal {
        whitelisted[_user] = _status;
        emit NewWhitelistStatus(_user, _status);
    }

    function setTrader(address _trader) public onlyOwner {
        require(trader == address(0), "already set");
        trader = _trader;
    }

    // TRADER

    function custodyFunds() external onlyTrader notCustodied duringEpoch returns (uint256) {
        uint256 amount = totalAssets();
        require(amount > 0, "!amount");

        custodied = true;
        custodiedAmount = amount;
        IERC20(asset()).transfer(trader, amount);

        emit FundsCustodied(epochId, amount);
        return amount;
    }

    function returnFunds(uint256 _amount) external onlyTrader {
        require(custodied, "!custody");
        require(_amount > 0, "!amount");
        IERC20(asset()).transferFrom(trader, address(this), _amount);

        uint256 currentEpoch = getCurrentEpoch();
        Epoch storage epoch = epochs[currentEpoch];
        epoch.epochEnd = uint80(block.timestamp);

        custodiedAmount = 0;
        custodied = false;
        started = false;
        totalDeposits = totalAssets();

        emit FundsReturned(currentEpoch, _amount);
    }

    // VIEW

    function getCurrentEpoch() public view returns (uint256) {
        return epochId;
    }

    function getCurrentEpochInfo() external view returns (Epoch memory) {
        return epochs[epochId];
    }

    function isFunding() external view returns (bool) {
        Epoch storage epoch = epochs[epochId];
        return uint80(block.timestamp) >= epoch.fundingStart && uint80(block.timestamp) < epoch.epochStart;
    }

    function isInEpoch() external view returns (bool) {
        Epoch storage epoch = epochs[epochId];
        return uint80(block.timestamp) >= epoch.epochStart && uint80(block.timestamp) < epoch.epochEnd;
    }

    function notCustodiedAndDuringFunding() internal view returns (bool) {
        Epoch storage epoch = epochs[epochId];
        return (!custodied && (uint80(block.timestamp) >= epoch.fundingStart && uint80(block.timestamp) < epoch.epochStart));
    }

    function notCustodiedAndNotDuringEpoch() internal view returns (bool) {
        Epoch storage epoch = epochs[epochId];
        return (!custodied && (uint80(block.timestamp) < epoch.epochStart || uint80(block.timestamp) >= epoch.epochEnd));
    }

    // EIP-4626

    function maxDeposit(address) public view override returns (uint256) {
        if (custodied) return 0;
        return totalDeposits > maxDeposits ? 0 : maxDeposits - totalDeposits;
    }

    function maxMint(address) public view override returns (uint256) {
        return convertToShares(maxDeposit(msg.sender));
    }

    function deposit(uint256 assets, address receiver) public override notCustodied duringFunding onlyWhitelisted returns (uint256) {
        require(assets <= maxDeposit(receiver), "!maxDeposit");
        return super.deposit(assets, receiver);
    }

    function previewDeposit(uint256 assets) public view override returns (uint256) {
        return (notCustodiedAndDuringFunding()) ? super.previewDeposit(assets) : 0;
    }

    function mint(uint256 shares, address receiver) public override notCustodied duringFunding onlyWhitelisted returns (uint256) {
        require(shares <= maxMint(receiver), "!maxMint");
        return super.mint(shares, receiver);
    }

    function previewMint(uint256 shares) public view override returns (uint256) {
        return (notCustodiedAndDuringFunding()) ? super.previewMint(shares) : 0;
    }

    function withdraw(
        uint256 assets,
        address receiver,
        address _owner
    ) public override notCustodied notDuringEpoch onlyWhitelisted returns (uint256) {
        return super.withdraw(assets, receiver, _owner);
    }

    function previewWithdraw(uint256 assets) public view override returns (uint256) {
        return (notCustodiedAndNotDuringEpoch()) ? super.previewWithdraw(assets) : 0;
    }

    /// @dev    See EIP-4626
    function redeem(
        uint256 shares,
        address receiver,
        address _owner
    ) public override notCustodied notDuringEpoch onlyWhitelisted returns (uint256) {
        return super.redeem(shares, receiver, _owner);
    }

    function previewRedeem(uint256 shares) public view override returns (uint256) {
        return (notCustodiedAndNotDuringEpoch()) ? super.previewRedeem(shares) : 0;
    }

    function totalAssets() public view override returns (uint256) {
        return custodied ? custodiedAmount : IERC20(asset()).balanceOf(address(this));
    }

    function _deposit(address caller, address receiver, uint256 assets, uint256 shares) internal override {
        super._deposit(caller, receiver, assets, shares);
        totalDeposits += assets;
    }

    function _withdraw(address caller, address receiver, address _owner, uint256 assets, uint256 shares) internal override {
        if (totalDeposits > assets) {
            totalDeposits -= assets;
        } else {
            totalDeposits = 0;
        }
        super._withdraw(caller, receiver, _owner, assets, shares);
    }

    function token() public view returns (address) {
        return address(this);
    }

    function approvalRequired() external pure virtual returns (bool) {
        return false;
    }

    function _debit(address _from, uint256 _amountLD, uint256 _minAmountLD, uint32 _dstEid) internal virtual override returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        (amountSentLD, amountReceivedLD) = _debitView(_amountLD, _minAmountLD, _dstEid);
        _burn(_from, amountSentLD);
    }

    function _credit(address _to, uint256 _amountLD, uint32) internal virtual override returns (uint256 amountReceivedLD) {
        if (_to == address(0x0)) _to = address(0xdead);
        _mint(_to, _amountLD);
        return _amountLD;
    }
}

interface IStrategy {
    function claim() external;
    function setFeeReceiver(address) external;
    function setVault(address, address) external;
    function grantRole(bytes32, address) external;
    function renounceRole(bytes32) external;
}
