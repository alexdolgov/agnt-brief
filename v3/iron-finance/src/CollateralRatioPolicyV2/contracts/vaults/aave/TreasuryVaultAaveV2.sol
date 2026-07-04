// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/utils/Context.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

import "./IAaveLendingPool.sol";
import "./IAaveIncentivesController.sol";
import "../../interfaces/IUniswapV2Router.sol";

contract TreasuryVaultAaveV2 is Ownable, ReentrancyGuard, Initializable {
    using SafeERC20 for IERC20;

    IERC20 public aToken;
    IERC20 public debtToken;
    address public treasury;
    address public profitFund; // address where invested profit will be transferred to
    address private usdc = 0x2791Bca1f2de4661ED88A30C99A7a9449Aa84174; // usdc
    address private wmatic = 0x0d500B1d8E8eF31E21C99d1Db9A6444d3ADf1270; // wmatic

    ILendingPool public AaveLendingPool; // Aave lending Pool
    IAaveIncentivesController public AaveIncentivesController;

    uint256 public borrowRatio = 60; // 60% - keep in check with Aave USDC's LTV
    uint256 public repayRatio = 75; // 75%
    uint256 public numberOfCycles = 2; // 2 loops by default
    uint256 public vaultBalance;

    uint256 private constant RATE_MODEL = 2; // Variable rate
    uint256 private constant ZOOM = 100;
    uint256 private constant MAX_BORROW_RATIO = 75;
    uint256 private constant MAX_REPAY_RATIO = 90;
    uint256 private constant MAX_NUMBER_OF_CYCLES = 5;
    uint256 private constant swapTimeout = 900; // 15 minutes
    address public router;
    address[] public swapPath;

    // EVENTS
    event Deposited(uint256 amount);
    event Withdrawn(uint256 amount);
    event Profited(uint256 amount);
    event IncentivesClaimed(uint256 amount);
    event TreasuryChanged(address indexed newTreasury);
    event ProfitFundChanged(address indexed newProfitFund);

    // Modifiers

    modifier onlyTreasury {
        require(_msgSender() == treasury, "!treasury");
        _;
    }

    // Constructor

    function initialize(
        address _aaveLendingPool,
        address _aaveIncentivesController,
        address _treasury,
        address _profitFund
    ) external initializer {
        AaveLendingPool = ILendingPool(_aaveLendingPool);
        AaveIncentivesController = IAaveIncentivesController(_aaveIncentivesController);
        aToken = IERC20(_getATokenAddress(usdc));
        debtToken = IERC20(_getDebtTokenAddress(usdc));
        setTreasury(_treasury);
        setProfitFund(_profitFund);
    }

    function deposit(uint256 _amount) external onlyTreasury {
        require(_amount > 0, "amount = 0");
        IERC20 asset = IERC20(usdc);
        asset.safeTransferFrom(msg.sender, address(this), _amount);
        asset.safeApprove(address(AaveLendingPool), 0);
        asset.safeApprove(address(AaveLendingPool), type(uint256).max);

        uint256 newBalance = asset.balanceOf(address(this)); // invest everything in vault
        vaultBalance = newBalance;

        _deposit(newBalance);
        _borrow((newBalance * borrowRatio) / ZOOM);

        for (uint256 i = 0; i < numberOfCycles; i++) {
            uint256 _depositAmount = (balanceOfCollateral() * borrowRatio) / ZOOM;
            uint256 _borrowAmount = (_depositAmount * borrowRatio) / ZOOM;
            _deposit(_depositAmount);
            _borrow(_borrowAmount);
        }
        _deposit((balanceOfCollateral() * borrowRatio) / ZOOM);
        asset.safeApprove(address(AaveLendingPool), 0);
        emit Deposited(_amount);
    }

    function withdraw() external onlyTreasury {
        IERC20 asset = IERC20(usdc);
        asset.safeApprove(address(AaveLendingPool), 0);
        asset.safeApprove(address(AaveLendingPool), type(uint256).max);
        while (debtToken.balanceOf(address(this)) > 0) {
            uint256 _remainAToken = ((balanceOfAToken() - balanceOfDebtToken()) * repayRatio) / ZOOM;
            _withdraw(_remainAToken);
            _repay((balanceOfCollateral() * repayRatio) / ZOOM);
        }
        _withdraw(type(uint256).max);
        _claimIncetiveRewards();
        uint256 newBalance = asset.balanceOf(address(this));
        uint256 profit = 0;
        if (newBalance > vaultBalance) {
            profit = newBalance - vaultBalance;
        } else {
            vaultBalance = newBalance; // in case of loss
        }
        if (vaultBalance > 0) {
            asset.safeTransfer(treasury, vaultBalance); // return capital to treasury
        }
        if (profit > 0) {
            asset.safeTransfer(profitFund, profit); // transfer profit to profitFund
        }
        vaultBalance = asset.balanceOf(address(this));
        asset.safeApprove(address(AaveLendingPool), 0);
        emit Withdrawn(newBalance);
        emit Profited(profit);
    }

    function balanceOfCollateral() public view returns (uint256) {
        return IERC20(usdc).balanceOf(address(this));
    }

    function balanceOfAToken() public view returns (uint256) {
        return aToken.balanceOf(address(this));
    }

    function balanceOfDebtToken() public view returns (uint256) {
        return debtToken.balanceOf(address(this));
    }

    // ===== INTERNAL FUNCTIONS ===============

    function _claimIncetiveRewards() internal {
        uint256 unclaimedRewards = AaveIncentivesController.getUserUnclaimedRewards(address(this));
        address[] memory _tokens = new address[](1);
        _tokens[0] = address(aToken);
        AaveIncentivesController.claimRewards(_tokens, unclaimedRewards, address(this)); // claim directly to owner
        emit IncentivesClaimed(unclaimedRewards);
        uint256 _incentiveBalance = IERC20(wmatic).balanceOf(address(this));
        _swap(wmatic, usdc, _incentiveBalance);
    }

    function _swap(
        address _inputToken,
        address _outputToken,
        uint256 _inputAmount
    ) internal {
        if (_inputAmount == 0) {
            return;
        }
        require(router != address(0), "invalid route");
        require(swapPath[swapPath.length - 1] == _outputToken, "invalid path");
        IERC20(_inputToken).safeApprove(router, 0);
        IERC20(_inputToken).safeApprove(router, _inputAmount);
        IUniswapV2Router(router).swapExactTokensForTokensSupportingFeeOnTransferTokens(_inputAmount, 0, swapPath, address(this), block.timestamp + swapTimeout);
    }

    function _withdraw(uint256 _amount) internal {
        if (_amount > 0) {
            AaveLendingPool.withdraw(usdc, _amount, address(this));
        }
    }

    function _borrow(uint256 _amount) internal {
        if (_amount > 0) {
            AaveLendingPool.borrow(usdc, _amount, RATE_MODEL, 0, address(this));
        }
    }

    function _repay(uint256 _amount) internal {
        if (_amount > 0) {
            AaveLendingPool.repay(usdc, _amount, RATE_MODEL, address(this));
        }
    }

    function _deposit(uint256 _amount) internal {
        if (_amount > 0) {
            AaveLendingPool.deposit(usdc, _amount, address(this), 0);
        }
    }

    function _getATokenAddress(address _asset) internal view returns (address) {
        DataTypes.ReserveData memory reserveData = AaveLendingPool.getReserveData(_asset);
        return reserveData.aTokenAddress;
    }

    function _getDebtTokenAddress(address _asset) internal view returns (address) {
        DataTypes.ReserveData memory reserveData = AaveLendingPool.getReserveData(_asset);
        return reserveData.variableDebtTokenAddress;
    }

    // ===== ADMIN FUNCTIONS ===============

    function setBorrowRatio(uint256 _borrowRatio) external onlyOwner {
        require(_borrowRatio <= MAX_BORROW_RATIO, "borrow rate reach limit");
        borrowRatio = _borrowRatio;
    }

    function setRepayRatio(uint256 _repayRatio) external onlyOwner {
        require(_repayRatio <= MAX_REPAY_RATIO, "repay rate reach limit");
        repayRatio = _repayRatio;
    }

    function setCycles(uint256 _numberOfCycles) external onlyOwner {
        require(_numberOfCycles <= MAX_NUMBER_OF_CYCLES, "Reach max number of cycles");
        numberOfCycles = _numberOfCycles;
    }

    function setTreasury(address _treasury) public onlyOwner {
        require(_treasury != address(0), "Invalid address");
        treasury = _treasury;
        emit TreasuryChanged(_treasury);
    }

    function setSwapOptions(address _router, address[] calldata _path) public onlyOwner {
        require(_router != address(0), "Invalid address");
        require(_path.length > 1, "Invalid path");
        require(_path[0] == address(wmatic), "Path must start with wmatic");
        require(_path[_path.length - 1] == address(usdc), "Path must end with usdc");
        router = _router;
        swapPath = _path;
    }

    function setProfitFund(address _profitFund) public onlyOwner {
        require(_profitFund != address(0), "Invalid address");
        profitFund = _profitFund;
        emit ProfitFundChanged(_profitFund);
    }

    function executeTransaction(
        address target,
        uint256 value,
        string memory signature,
        bytes memory data
    ) public onlyOwner returns (bytes memory) {
        bytes memory callData;

        if (bytes(signature).length == 0) {
            callData = data;
        } else {
            callData = abi.encodePacked(bytes4(keccak256(bytes(signature))), data);
        }
        // solium-disable-next-line security/no-call-value
        (bool success, bytes memory returnData) = target.call{value: value}(callData);
        require(success, string("TreasuryVaultAaveV2::executeTransaction: Transaction execution reverted."));
        return returnData;
    }

    receive() external payable {}
}
