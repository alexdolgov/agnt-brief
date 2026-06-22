// SPDX-License-Identifier: MIT

pragma solidity 0.8.15;
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "./interfaces/IVault.sol";
import "./interfaces/IPairInfos.sol";

contract TradingVault is IVault, ERC20, Ownable2Step, ReentrancyGuard {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    IPairInfos public pairInfo;
    address public immutable standardToken;
    uint8 private immutable _decimals;
    uint public withdrawTimelock; // time
    // 1. standardToken balance
    uint256 public currentBalance;
    // 2. standardToken staking rewards
    uint public totalRewardsDistributed;

    mapping(address => uint256) public userLastDepositTime;
    mapping(address => uint) public standardTokenToClaim;
    mapping(address => bool) public allowed;
    mapping(address => bool) public allowedToInteract;

    // EVENTS
    event Deposited(address caller, uint amount, uint newCurrentBalance, uint shares);
    event Withdrawn(address caller, uint amount, uint newCurrentBalance, uint shares);
    event Sent(address caller, address trader, uint amount, uint newCurrentBalance);
    event ToClaim(address caller, address trader, uint amount, uint currentBalance);
    event Claimed(address trader, uint amount, uint newCurrentBalance);
    event ReceivedFromTrader(
        address caller,
        address trader,
        uint UstandardTokenAmount,
        uint vaultFeeUSDT,
        uint newCurrentBalance
    );
    event WithdrawTimelockSet(uint256 indexed _withdrawTimelock);
    event AllowedToInteractSet(address indexed sender, bool status);
    event AllowedSet(address indexed _allowed, bool status);
    event StandardTokenSet(address indexed usdt);
    event DistributeReward(uint256 _amount);
    event SetPairInfo(address _pairInfo);
    constructor(string memory _name, string memory _symbol, address _standardToken) ERC20(_name, _symbol) {
        require(_standardToken != address(0), "address_0");
        standardToken = _standardToken;
        _decimals = ERC20(standardToken).decimals();
        emit StandardTokenSet(_standardToken);
    }

    modifier onlyAllowed() {
        require(allowedToInteract[msg.sender], "NOT_ALLOWED");
        _;
    }
    function setAllowedToInteract(address _sender, bool _flag) public onlyOwner {
        allowedToInteract[_sender] = _flag;
        emit AllowedToInteractSet(_sender, _flag);
    }
    function setAllowed(address _allowed, bool _flag) public onlyOwner {
        allowed[_allowed] = _flag;
        emit AllowedSet(_allowed, _flag);
    }

    function setPairInfo(address _pairInfo) external onlyOwner {
        pairInfo = IPairInfos(_pairInfo);
        emit SetPairInfo(_pairInfo);
    }

    function setWithdrawTimelock(uint _withdrawTimelock) external onlyOwner {
        withdrawTimelock = _withdrawTimelock;
        emit WithdrawTimelockSet(_withdrawTimelock);
    }

    function getPricePerFullShare() public view returns (uint256) {
        return totalSupply() == 0 ? 10 ** ERC20(standardToken).decimals() : currentBalance.mul(1e18).div(totalSupply());
    }

    function depositAll(address _user) external {
        deposit(IERC20(standardToken).balanceOf(msg.sender), _user);
    }
    function deposit(uint _amount, address _user) public nonReentrant {
        require(_amount > 0, "AMOUNT_0");
        address user;
        if (allowed[msg.sender]) {
            user = _user;
        } else {
            user = msg.sender;
            userLastDepositTime[user] = block.timestamp;
        }
        SafeERC20.safeTransferFrom(IERC20(standardToken), msg.sender, address(this), _amount);
        uint256 shares = 0;
        if (totalSupply() == 0) {
            require(_amount > 1000, "Not Enough Shares for first mint");
            shares = (_amount - 1000);
            _mint(address(this), 1000);
        } else {
            shares = (_amount.mul(totalSupply())).div(currentBalance);
        }
        require(shares != 0, "Zero shares minted");
        currentBalance += _amount;
        _mint(user, shares);
        emit Deposited(user, _amount, currentBalance, shares);
    }

    function withdrawAll() external {
        withdraw(balanceOf(msg.sender));
    }

    function withdraw(uint _shares) public nonReentrant {
        require(balanceOf(msg.sender) >= _shares, "Not Enough Shares");
        require(_shares > 0, "AMOUNT_0");
        uint256 userAsset = (currentBalance.mul(_shares)).div(totalSupply());
        require(block.timestamp >= userLastDepositTime[msg.sender] + withdrawTimelock, "TOO_EARLY");
        uint256 occupied = pairInfo.occupiedCollateral();
        require(userAsset + occupied <= currentBalance, "occupied");
        _burn(msg.sender, _shares);
        currentBalance -= userAsset;
        IERC20(standardToken).safeTransfer(msg.sender, userAsset);
        emit Withdrawn(msg.sender, userAsset, currentBalance, _shares);
    }

    // USDT incentives
    function distributeReward(uint _amount, bool _send) public override onlyAllowed {
        currentBalance = currentBalance.add(_amount);
        totalRewardsDistributed += _amount;
        if (_send) {
            IERC20(standardToken).safeTransferFrom(msg.sender, address(this), _amount);
        }
        require(IERC20(standardToken).balanceOf(address(this)) >= currentBalance, "Not send");
        emit DistributeReward(_amount);
    }

    // Handle traders standardToken when a trade is closed
    function sendToTrader(address _trader, uint _amount) external override onlyAllowed {
        if (_amount < currentBalance) {
            currentBalance = currentBalance.sub(_amount);
            IERC20(standardToken).safeTransfer(_trader, _amount);
            emit Sent(msg.sender, _trader, _amount, currentBalance);
        } else {
            standardTokenToClaim[_trader] += _amount;
            emit ToClaim(msg.sender, _trader, _amount, currentBalance);
        }
    }

    function claim() external {
        uint amount = standardTokenToClaim[msg.sender];
        require(amount > 0, "NOTHING_TO_CLAIM");
        require(currentBalance > amount, "BALANCE_TOO_LOW");
        unchecked {
            currentBalance -= amount;
        }
        standardTokenToClaim[msg.sender] = 0;
        IERC20(standardToken).safeTransfer(msg.sender, amount);
        emit Claimed(msg.sender, amount, currentBalance);
    }

    // Handle standardToken from opened trades
    function receiveFromTrader(
        address _trader,
        uint _amount,
        uint _vaultFee,
        bool _send
    ) external override onlyAllowed {
        currentBalance += _amount;
        if (_vaultFee > 0) {
            distributeReward(_vaultFee, _send);
        }
        emit ReceivedFromTrader(msg.sender, _trader, _amount, _vaultFee, currentBalance);
    }

    function decimals() public view override returns (uint8) {
        return _decimals;
    }

    function _transfer(address from, address to, uint256 amount) internal override {
        require(block.timestamp >= userLastDepositTime[from] + withdrawTimelock, "TOO_EARLY");
        super._transfer(from, to, amount);
    }
}
