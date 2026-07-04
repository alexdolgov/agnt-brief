// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";

interface IWETH {
    function deposit() external payable;

    function withdraw(uint256) external;
}

interface IChefIncentivesController {
    /**
     * @dev Called by the corresponding asset on any update that affects the rewards distribution
     * @param user The address of the user
     * @param userBalance The balance of the user of the asset in the lending pool
     **/
    function handleWithdrawAfter(address user, uint256 userBalance) external;
}

contract AirPuffLendingETH is ERC4626Upgradeable, OwnableUpgradeable {
    using SafeERC20 for IERC20;
    using MathUpgradeable for uint256;

    address public WETH; // ETH
    address public feeReceiver;
    uint256 public withdrawalFees;

    uint256 public constant DENOMINATOR = 10000;
    uint256 public AirPuff_DEFAULT_PRICE;
    uint256 private totalAsset;
    uint256 private totalETH;
    uint256 private totalWETH;
    uint256 public totalDebt;
    uint256 public utilRate;

    mapping(address => uint256) public userTimelock;
    mapping(address => bool) public allowedToGift;
    mapping(address => bool) public allowedVaults;
    uint256 public lockTime;
    uint256[50] private __gaps;

    mapping(address => uint256) public strategyCap;
    mapping(address => uint256) public strategyBorrowedAmount;
    address public chef;

    modifier onlyAllowedVaults() {
        require(allowedVaults[msg.sender], "Not an allowed vault");
        _;
    }

    modifier onlyETHGifter() {
        require(allowedToGift[msg.sender], "Not allowed to increment ETH");
        _;
    }

    modifier zeroAddress(address addr) {
        require(addr != address(0), "ZERO_ADDRESS");
        _;
    }

    modifier noZeroValues(uint256 assetsOrShares) {
        require(assetsOrShares > 0, "VALUE_0");
        _;
    }

    modifier stillLocked() {
        require(block.timestamp > userTimelock[msg.sender], "Still locked");
        _;
    }

    event ProtocolFeeParamsSet(address newFeeReceiver, uint256 newWithdrawalFee);
    event LockTimeChanged(uint256 lockTime);
    event Lend(address indexed user, uint256 amount);
    event RepayDebt(address indexed user, uint256 debtAmount, uint256 amountPaid);
    event ETHGifterAllowed(address indexed gifter, bool status);
    event Deposited(address caller, address receiver, uint256 assets, uint256 shares, uint256 timestamp, uint256 utilRate);
    event Withdrawn(address caller, address receiver, address owner, uint256 assets, uint256 shares, uint256 timestamp, uint256 utilRate);
    event WithdrawnETH(address caller, address receiver, address owner, uint256 assets, uint256 shares, uint256 timestamp, uint256 utilRate);
    event DepositedETH(address caller, address receiver, uint256 assets, uint256 shares, uint256 timestamp, uint256 utilRate);
    event StrategyCapSet(address strategy, uint256 cap);
    event IncreasedTotalAssets(uint256 amount);
    event ChefIncentivesControllerUpdated(address newChef);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _WETH) external initializer {
        require(_WETH != address(0), "ZERO_ADDRESS");
        WETH = _WETH;
        AirPuff_DEFAULT_PRICE = 1e18;
        feeReceiver = msg.sender;
        lockTime = 0;
        allowedToGift[msg.sender] = true;

        __Ownable_init();
        __ERC4626_init(IERC20Upgradeable(_WETH));
        __ERC20_init("ETH-AirPuff", "ETH-AirPuff");
    }

    /** ---------------- View functions --------------- */

    function balanceOfAsset() public view returns (uint256) {
        return totalAsset;
    }

    /**
     * @notice Public function to get the current price of the AirPuff token.
     * @dev The function calculates the current price of the AirPuff token based on the total assets in the contract and the total supply of AirPuff tokens.
     * @return The current price of the AirPuff token.
     */
    function getAirPuffPrice() public view returns (uint256) {
        uint256 currentPrice;
        if (totalAssets() == 0) {
            currentPrice = AirPuff_DEFAULT_PRICE;
        } else {
            currentPrice = totalAssets().mulDiv(AirPuff_DEFAULT_PRICE, totalSupply());
        }
        return currentPrice;
    }

    /** @dev See {IERC4626-totalAssets}. */
    function totalAssets() public view virtual override returns (uint256) {
        return totalAsset + totalDebt;
    }

    function getUtilizationRate() public view returns (uint256) {        
        return totalDebt == 0 ? 0 : totalDebt.mulDiv(1e18, balanceOfAsset() + totalDebt);
    }

    /** ----------- Change onlyOwner functions ------------- */

    // In case we need to disable the chef, can be address 0
    function setChefIncentivesController(address _chef) external onlyOwner {
        chef = _chef;
        emit ChefIncentivesControllerUpdated(_chef);
    }

    function setAllowedStrategy(address _vault, bool _status) external onlyOwner zeroAddress(_vault) {
        allowedVaults[_vault] = _status;
    }

    function setUtilRate(uint256 _utilRate) public onlyOwner {
        require(_utilRate <= 1e18, "Invalid utilization rate");
        utilRate = _utilRate;
    }

    function allowETHGifter(address _gifter, bool _status) external onlyOwner zeroAddress(_gifter) {
        allowedToGift[_gifter] = _status;
        emit ETHGifterAllowed(_gifter, _status);
    }

    function setStrategyCap(address _strategy, uint256 _cap) external onlyOwner zeroAddress(_strategy) {
        require(_cap > 0, "Invalid cap");
        strategyCap[_strategy] = _cap;
        emit StrategyCapSet(_strategy, _cap);
    }

    function setProtocolFeesParams(
        address _feeReceiver,
        uint256 _withdrawalFees
    ) external onlyOwner zeroAddress(_feeReceiver) {
        require(_withdrawalFees <= DENOMINATOR, "Invalid withdrawal fees");
        withdrawalFees = _withdrawalFees;
        feeReceiver = _feeReceiver;
        emit ProtocolFeeParamsSet(_feeReceiver, _withdrawalFees);
    }

    function setLockTime(uint256 _lockTime) public onlyOwner {
        require(_lockTime > 1 days, "Invalid lock time");
        lockTime = _lockTime;
        emit LockTimeChanged(_lockTime);
    }

    /**
     * @notice Allow the VodkaV2 Vault to lend a certain amount of ETH to the protocol.
     * @dev The function allows the VodkaV2 Vault to lend a certain amount of ETH to the protocol. It updates the total debt and total ETH balances accordingly.
     * @param _borrowed The amount of ETH to lend.
     * @return status A boolean indicating the success of the lending operation.
     */
    function lend(uint256 _borrowed, address _receiver) external onlyAllowedVaults returns (bool status) {
        uint256 am = _borrowed;
        require(totalAsset > am, "Not enough ETH to lend");
        require(strategyBorrowedAmount[msg.sender] + _borrowed <= strategyCap[msg.sender], "Borrow cap reached");

        strategyBorrowedAmount[msg.sender] += _borrowed;
        totalDebt += _borrowed;
        totalAsset -= _borrowed;
        

        require(getUtilizationRate() <= utilRate, "Leverage ratio too high");
        IERC20(WETH).safeTransfer(_receiver, am);

        emit Lend(_receiver, am);
        return true;
    }

    /**
     * @notice Allows the VodkaV2 Vault to repay debt to the protocol.
     * @dev The function allows the VodkaV2 Vault to repay a certain amount of debt to the protocol. It updates the total debt and total ETH balances accordingly.
     * @param _debtAmount The amount of debt to repay.
     * @param _amountPaid The amount of ETH paid to repay the debt.
     * @return A boolean indicating the success of the debt repayment operation.
     */
    function repayDebt(uint256 _debtAmount, uint256 _amountPaid) external onlyAllowedVaults returns (bool) {
        IERC20(WETH).safeTransferFrom(msg.sender, address(this), _amountPaid);
        totalDebt = totalDebt - _debtAmount;
        totalAsset += _amountPaid;
        strategyBorrowedAmount[msg.sender] -= _debtAmount;

        emit RepayDebt(msg.sender, _debtAmount, _amountPaid);
        return true;
    }

    /**
     * @notice Deposit assets into the contract for a receiver and receive corresponding shares.
     * @dev The function allows a user to deposit a certain amount of assets into the contract and receive the corresponding shares in return.
     *      It noZeroValues if the deposited assets do not exceed the maximum allowed deposit for the receiver.
     *      It then calculates the amount of shares to be issued to the user and calls the internal `_deposit` function to perform the actual deposit.
     *      It updates the total ETH balance and sets a timelock for the receiver.
     * @param _assets The amount of assets to deposit.
     * @param _receiver The address of the receiver who will receive the corresponding shares.
     * @return The amount of shares issued to the user.
     */
    function deposit(uint256 _assets, address _receiver) public override noZeroValues(_assets) returns (uint256) {
        uint256 UR = getUtilizationRate();
        IERC20(WETH).transferFrom(msg.sender, address(this), _assets);
        uint256 shares = previewDeposit(_assets);

        _deposit(_msgSender(), msg.sender, _assets, shares);

        emit Deposited(msg.sender, _receiver, _assets, shares, block.timestamp,UR);
        return shares;
    }

    function depositETH() public payable returns (uint256) {
        uint256 UR = getUtilizationRate();
        uint256 _assets = msg.value;
        uint256 shares = previewDeposit(_assets);
        IWETH(WETH).deposit{ value: _assets }();
        _deposit(_msgSender(), msg.sender, _assets, shares);
        totalETH += _assets;

        emit DepositedETH(msg.sender, msg.sender, _assets, shares, block.timestamp, UR);
        return shares;
    }

    function _deposit(address caller, address receiver, uint256 assets, uint256 _shares) internal override noZeroValues(assets) {
        require(assets <= maxDeposit(msg.sender), "ERC4626: deposit more than max");
        uint256 shares;
        if (totalSupply() == 0) {
            require(assets > 1000, "Not Enough Shares for first mint");
            uint256 SCALE = 10 ** decimals() / 10 ** 18;
            shares = (assets - 1000) * SCALE;
            _mint(address(this), 1000 * SCALE);
        } else {
            shares = _shares;
        }
        _mint(receiver, shares);

        totalAsset += assets;
        userTimelock[msg.sender] = block.timestamp + lockTime;
        emit Deposit(msg.sender, receiver, assets, shares);
    }

    /**
     * @notice Withdraw assets from the contract for a receiver and return the corresponding shares.
     * @dev The function allows a user to withdraw a certain amount of assets from the contract and returns the corresponding shares.
     *      It noZeroValues if the withdrawn assets do not exceed the maximum allowed withdrawal for the owner.
     *      It also noZeroValues if there are sufficient assets in the vault to cover the withdrawal and if the user's withdrawal is not timelocked.
     *      It calculates the amount of shares to be returned to the user and calculates the withdrawal fee. It then transfers the fee amount to the fee receiver.
     *      The function then performs the actual withdrawal by calling the internal `_withdraw` function. It updates the total ETH balance after the withdrawal and returns the amount of shares returned to the user.
     * @param _assets The amount of assets (ETH) to withdraw.
     * @param _receiver The address of the receiver who will receive the corresponding shares.
     * @param _owner The address of the owner who is making the withdrawal.
     * @return The amount of shares returned to the user.
     */
    function withdraw(
        uint256 _assets, // Native (WETH) token amount
        address _receiver,
        address _owner
    ) public override noZeroValues(_assets) stillLocked returns (uint256) {
        require(_assets <= maxWithdraw(msg.sender), "ERC4626: withdraw more than max");
        require(balanceOfAsset() >= _assets, "Insufficient balance in vault");
        uint256 UR = getUtilizationRate();

        uint256 shares = previewWithdraw(_assets);
        uint256 feeAmount = (_assets * withdrawalFees) / DENOMINATOR;

        uint256 userAmount = _assets - feeAmount;
        totalAsset -= _assets;
        
        IERC20(WETH).safeTransfer(feeReceiver, feeAmount);
        _withdraw(_msgSender(), msg.sender, msg.sender, userAmount, shares);

        if (chef != address(0)) {
            IChefIncentivesController(chef).handleWithdrawAfter(msg.sender, balanceOf(msg.sender));
        }

        emit Withdrawn(msg.sender, _receiver, _owner, _assets, shares,block.timestamp,UR);
        return shares;
    }

    function withdrawETH(uint256 _assets) public noZeroValues(_assets) stillLocked returns (uint256) {
        require(_assets <= maxWithdraw(msg.sender), "ERC4626: withdraw more than max");
        require(balanceOfAsset() >= _assets, "Insufficient balance in vault");
        uint256 UR = getUtilizationRate();

        uint256 shares = previewWithdraw(_assets);
        uint256 feeAmount = (_assets * withdrawalFees) / DENOMINATOR;

        uint256 userAmount = _assets - feeAmount;
        if (_msgSender() != msg.sender) {
            _spendAllowance(msg.sender, _msgSender(), shares);
        }

        _burn(msg.sender, shares);
        IWETH(WETH).withdraw(_assets);

        totalAsset -= _assets;
        payable(feeReceiver).transfer(feeAmount);

        if (chef != address(0)) {
            IChefIncentivesController(chef).handleWithdrawAfter(msg.sender, balanceOf(msg.sender));
        }

        (bool success, ) = payable(msg.sender).call{ value: userAmount }("");
        require(success, "Transfer failed.");
        
        emit WithdrawnETH(msg.sender, msg.sender, msg.sender, _assets, shares, block.timestamp, getUtilizationRate());
        return shares;
    }

    function mint(uint256 shares, address receiver) public virtual override returns (uint256) {
        revert("Not used");
    }

    function redeem(uint256 shares, address receiver, address owner) public virtual override returns (uint256) {
        revert("Not used");
    }

    function transfer(address to, uint256 shares) public virtual override(ERC20Upgradeable, IERC20Upgradeable) returns (bool) {
        revert("Not used");
    }

    function transferFrom(address from, address to, uint256 shares) public virtual override(ERC20Upgradeable, IERC20Upgradeable) returns (bool) {
        revert("Not used");
    }

    //function that only allows a whitelisted address to call to increase totalETH
    function increaseTotalETH(uint256 _amount) external onlyETHGifter {
        IERC20(WETH).safeTransferFrom(msg.sender, address(this), _amount);
        totalAsset += _amount;
        emit IncreasedTotalAssets(_amount);
    }

    receive() external payable {}
}
