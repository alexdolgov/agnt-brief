//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

import {IGmxRewardRouter} from "src/interfaces/IGmxRewardRouter.sol";
import {IGlpManager} from "src/interfaces/IGlpManager.sol";

import {IGMXVault} from "src/interfaces/IGMXVault.sol";

import {IJonesGlpVaultRouter} from "src/interfaces/IJonesGlpVaultRouter.sol";
import {IJonesGlpLeverageStrategy} from "src/interfaces/IJonesGlpLeverageStrategy.sol";
import {IStableRouter} from "src/interfaces/IStableRouter.sol";

import {UpgradeableOperable} from "src/common/UpgradeableOperable.sol";
import {ReentrancyGuardUpgradeable} from "openzeppelin-upgradeable/contracts/security/ReentrancyGuardUpgradeable.sol";

import {Math} from "openzeppelin-contracts/contracts/utils/math/Math.sol";

import {WhitelistController} from "src/common/WhitelistController.sol";

contract Adapter is UpgradeableOperable, ReentrancyGuardUpgradeable {
    using Math for uint256;

    /* -------------------------------------------------------------------------- */
    /*                                  VARIABLES                                 */
    /* -------------------------------------------------------------------------- */

    IGmxRewardRouter public gmxRouter;
    IGlpManager private glpManager;
    address public socket;

    IERC20 public glp;
    IERC20 public usdc;

    IJonesGlpVaultRouter public glpRouter;
    IStableRouter public stableRouter;
    WhitelistController public controller;
    IJonesGlpLeverageStrategy public strategy;
    address public jUSDCVault;

    mapping(address => bool) public isValid;

    uint256 public constant BASIS_POINTS = 1e12;
    uint256 private constant PRECISION = 1e30;
    uint256 private constant USDC_DECIMALS = 1e6;
    uint256 private constant GLP_DECIMALS = 1e18;

    /* -------------------------------------------------------------------------- */
    /*                                 INITIALIZE                                 */
    /* -------------------------------------------------------------------------- */

    function initialize(
        address[] memory _tokens,
        address _glpRouter,
        address _stableRouter,
        address _jUSDCVault,
        address _strategy
    ) external initializer {
        __Governable_init(msg.sender);
        __ReentrancyGuard_init();

        uint8 i = 0;
        for (; i < _tokens.length;) {
            _editToken(_tokens[i], true);
            unchecked {
                i++;
            }
        }

        jUSDCVault = _jUSDCVault;

        glpRouter = IJonesGlpVaultRouter(_glpRouter);
        stableRouter = IStableRouter(_stableRouter);
        strategy = IJonesGlpLeverageStrategy(_strategy);

        controller = WhitelistController(0x2ACc798DA9487fdD7F4F653e04D8E8411cd73e88);
        socket = 0x88616cB9499F32Ff6A784B66B60aABF0bCf0df39;

        gmxRouter = IGmxRewardRouter(0xB95DB5B167D75e6d04227CfFFA61069348d271F5);
        glpManager = IGlpManager(0x3963FfC9dff443c2A94f21b129D429891E32ec18);

        glp = IERC20(0x5402B5F40310bDED796c7D0F3FF6683f5C0cFfdf);
        usdc = IERC20(0xaf88d065e77c8cC2239327C5EDb3A432268e5831);
    }

    /* -------------------------------------------------------------------------- */
    /*                                  EXTERNAL                                  */
    /* -------------------------------------------------------------------------- */

    function zapToGlp(address _token, uint256 _amount, bool _compound, uint256 _minGlpOut)
        external
        nonReentrant
        validToken(_token)
        returns (uint256)
    {
        _onlyEOA();

        IERC20(_token).transferFrom(msg.sender, address(this), _amount);

        IERC20(_token).approve(gmxRouter.glpManager(), _amount);
        uint256 mintedGlp = gmxRouter.mintAndStakeGlp(_token, _amount, 0, _minGlpOut);

        glp.approve(address(glpRouter), mintedGlp);
        uint256 receipts = glpRouter.depositGlp(mintedGlp, msg.sender, _compound);

        return receipts;
    }

    function zapToGlpEth(bool _compound, uint256 _minGlpOut) external payable nonReentrant returns (uint256) {
        _onlyEOA();

        uint256 mintedGlp = gmxRouter.mintAndStakeGlpETH{value: msg.value}(0, _minGlpOut);

        glp.approve(address(glpRouter), mintedGlp);

        uint256 receipts = glpRouter.depositGlp(mintedGlp, msg.sender, _compound);

        return receipts;
    }

    function redeemGlpBasket(uint256 _shares, bool _compound, address _token, bool _native)
        external
        nonReentrant
        validToken(_token)
        returns (uint256)
    {
        _onlyEOA();

        uint256 assetsReceived = glpRouter.redeemGlpAdapter(_shares, _compound, _token, msg.sender, _native);

        return assetsReceived;
    }

    function depositGlp(uint256 _assets, bool _compound) external nonReentrant returns (uint256) {
        _onlyEOA();

        glp.transferFrom(msg.sender, address(this), _assets);

        glp.approve(address(glpRouter), _assets);

        uint256 receipts = glpRouter.depositGlp(_assets, msg.sender, _compound);

        return receipts;
    }

    function depositStable(uint256 _assets) external nonReentrant returns (uint256) {
        _onlyEOA();

        usdc.transferFrom(msg.sender, address(this), _assets);

        usdc.approve(address(stableRouter), _assets);

        uint256 receipts = stableRouter.deposit(_assets, msg.sender);

        return receipts;
    }

    ///@notice MultiChain Deposits

    function multichainZapToGlp(address _receiver, address _token, bool _compound, uint256 _minGlpOut)
        external
        nonReentrant
        returns (uint256)
    {
        IERC20 token = IERC20(_token);

        uint256 amount = token.allowance(msg.sender, address(this));

        if (amount == 0 || !isValid[_token]) {
            return 0;
        }

        if (!_onlyAllowed(_receiver)) {
            revert NotWhitelisted();
        }

        token.transferFrom(msg.sender, address(this), amount);

        if (!_onlySocket()) {
            token.transfer(_receiver, amount);
            return 0;
        }

        address _glpManager = gmxRouter.glpManager();
        token.approve(_glpManager, amount);

        uint256 mintedGlp;

        try gmxRouter.mintAndStakeGlp(_token, amount, 0, _minGlpOut) returns (uint256 glpAmount) {
            mintedGlp = glpAmount;
        } catch {
            token.transfer(_receiver, amount);
            token.approve(_glpManager, 0);
            return 0;
        }

        address routerAddress = address(glpRouter);

        glp.approve(routerAddress, mintedGlp);

        try glpRouter.depositGlp(mintedGlp, _receiver, _compound) returns (uint256 receipts) {
            return receipts;
        } catch {
            glp.transfer(_receiver, mintedGlp);
            glp.approve(routerAddress, 0);
            return 0;
        }
    }

    function multichainZapToGlpEth(address payable _receiver, bool _compound, uint256 _minGlpOut)
        external
        payable
        nonReentrant
        returns (uint256)
    {
        if (msg.value == 0) {
            return 0;
        }

        if (!_onlyAllowed(_receiver)) {
            revert NotWhitelisted();
        }

        if (!_onlySocket()) {
            (bool sent,) = _receiver.call{value: msg.value}("");
            if (!sent) {
                revert SendETHFail();
            }
            return 0;
        }

        uint256 mintedGlp;

        try gmxRouter.mintAndStakeGlpETH{value: msg.value}(0, _minGlpOut) returns (uint256 glpAmount) {
            mintedGlp = glpAmount;
        } catch {
            (bool sent,) = _receiver.call{value: msg.value}("");
            if (!sent) {
                revert SendETHFail();
            }
            return 0;
        }

        address routerAddress = address(glpRouter);

        glp.approve(routerAddress, mintedGlp);

        try glpRouter.depositGlp(mintedGlp, _receiver, _compound) returns (uint256 receipts) {
            return receipts;
        } catch {
            glp.transfer(_receiver, mintedGlp);
            glp.approve(routerAddress, 0);
            return 0;
        }
    }

    function multichainDepositStable(address _receiver) external nonReentrant returns (uint256) {
        uint256 amount = usdc.allowance(msg.sender, address(this));

        if (amount == 0) {
            return 0;
        }

        if (!_onlyAllowed(_receiver)) {
            revert NotWhitelisted();
        }

        usdc.transferFrom(msg.sender, address(this), amount);

        if (!_onlySocket()) {
            usdc.transfer(_receiver, amount);
            return 0;
        }

        address routerAddress = address(stableRouter);

        usdc.approve(routerAddress, amount);

        try stableRouter.deposit(amount, _receiver) returns (uint256 receipts) {
            return receipts;
        } catch {
            usdc.transfer(_receiver, amount);
            usdc.approve(routerAddress, 0);
            return 0;
        }
    }
    /// @notice Calculate USDC needed to leverage new GLP and Verify if STable vault have enough USDC

    function aboveCap(uint256 _amount) public view returns (bool) {
        uint256 missingGlp = ((_amount * (strategy.getTargetLeverage() - BASIS_POINTS)) / BASIS_POINTS); // 18 Decimals

        uint256 stableToBorrow = strategy.getRequiredStableAmount(missingGlp); // 6 Decimals

        stableToBorrow = _adjustToGMXCap(stableToBorrow);

        if (stableToBorrow > usdc.balanceOf(jUSDCVault)) {
            return true;
        } else {
            return false;
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                  GOVERNOR                                  */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Moves assets from the strategy to `_to`
     * @param _assets An array of IERC20 compatible tokens to move out from the strategy
     * @param _withdrawNative `true` if we want to move the native asset from the strategy
     */
    function emergencyWithdraw(address _to, address[] memory _assets, bool _withdrawNative) external onlyGovernor {
        uint256 assetsLength = _assets.length;
        for (uint256 i = 0; i < assetsLength; i++) {
            IERC20 asset_ = IERC20(_assets[i]);
            uint256 assetBalance = asset_.balanceOf(address(this));

            if (assetBalance > 0) {
                // Transfer the ERC20 tokens
                asset_.transfer(_to, assetBalance);
            }

            unchecked {
                ++i;
            }
        }

        uint256 nativeBalance = address(this).balance;

        // Nothing else to do
        if (_withdrawNative && nativeBalance > 0) {
            // Transfer the native currency
            (bool sent,) = payable(_to).call{value: nativeBalance}("");
            if (!sent) {
                revert SendETHFail();
            }
        }

        emit EmergencyWithdrawal(msg.sender, _to, _assets, _withdrawNative ? nativeBalance : 0);
    }

    function updateGmxRouter(address _gmxRouter) external onlyGovernor {
        gmxRouter = IGmxRewardRouter(_gmxRouter);
    }

    function updateGlpManager(address _glpManager) external onlyGovernor {
        glpManager = IGlpManager(_glpManager);
    }

    function updateSocket(address _socket) external onlyGovernor {
        socket = _socket;
    }

    function updateGlpRouter(address _glpRouter) external onlyGovernor {
        glpRouter = IJonesGlpVaultRouter(_glpRouter);
    }

    function updateStableRouter(address _stableRouter) external onlyGovernor {
        stableRouter = IStableRouter(_stableRouter);
    }

    function updateController(address _controller) external onlyGovernor {
        controller = WhitelistController(_controller);
    }

    function updateGlpToken(address _glp) external onlyGovernor {
        glp = IERC20(_glp);
    }

    function updateStableToken(address _stable) external onlyGovernor {
        usdc = IERC20(_stable);
    }

    function editToken(address _token, bool _valid) external onlyGovernor {
        _editToken(_token, _valid);
    }

    /* -------------------------------------------------------------------------- */
    /*                                  PRIVATE                                   */
    /* -------------------------------------------------------------------------- */

    function _editToken(address _token, bool _valid) private {
        isValid[_token] = _valid;
    }

    function _onlyEOA() private view {
        if (msg.sender != tx.origin && !controller.isWhitelistedContract(msg.sender)) {
            revert NotWhitelisted();
        }
    }

    function _onlySocket() private view returns (bool) {
        if (msg.sender == socket) {
            return true;
        }
        return false;
    }

    function _onlyAllowed(address _receiver) private view returns (bool) {
        if (_isContract(_receiver) && !controller.isWhitelistedContract(_receiver)) {
            return false;
        }
        return true;
    }

    function _isContract(address account) private view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(account)
        }
        return size > 0;
    }

    function _adjustToGMXCap(uint256 _stableAmount) private view returns (uint256) {
        IGlpManager manager = glpManager;
        IGMXVault vault = IGMXVault(manager.vault());

        address _usdc = address(usdc);

        uint256 usdgAmount =
            strategy.buyGlpStableSimulation(_stableAmount).mulDiv(manager.getAumInUsdg(false), glp.totalSupply());

        uint256 currentUsdgAmount = vault.usdgAmounts(_usdc);

        uint256 nextAmount = currentUsdgAmount + usdgAmount;
        uint256 maxUsdgAmount = vault.maxUsdgAmounts(_usdc);

        if (nextAmount > maxUsdgAmount) {
            uint256 redemptionAmount = (maxUsdgAmount - currentUsdgAmount).mulDiv(PRECISION, vault.getMaxPrice(_usdc));
            return redemptionAmount.mulDiv(USDC_DECIMALS, GLP_DECIMALS); // 6 decimals
        } else {
            return _stableAmount;
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                  MODIFIERS                                 */
    /* -------------------------------------------------------------------------- */

    modifier validToken(address _token) {
        require(isValid[_token], "Invalid token.");
        _;
    }

    /* -------------------------------------------------------------------------- */
    /*                                  ERRROS                                    */
    /* -------------------------------------------------------------------------- */

    error NotWhitelisted();
    error SendETHFail();
    error OverUsdcCap();

    /* -------------------------------------------------------------------------- */
    /*                                  EVENTS                                    */
    /* -------------------------------------------------------------------------- */

    event EmergencyWithdrawal(address indexed caller, address indexed receiver, address[] tokens, uint256 nativeBalanc);
}
