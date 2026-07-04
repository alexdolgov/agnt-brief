pragma solidity 0.8.25;

import {IERC20} from "openzeppelin/interfaces/IERC20.sol";

interface ILiquidStrategy {
    /*//////////////////////////////////////////////////////////////
                                FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function asset() external view returns (IERC20);
    function totalAssets() external view returns (uint256);
    function deposit(uint256 _amount) external;
    function withdraw(uint256 _amount) external;
    function migrateFrom4626(address _currentVault, address _newVault) external;
    function reallocateFunds(address[] memory targets, uint256[] memory amounts, bool[] memory isDeposit) external;
    function withdrawAll() external;
    function setLendingVault(address) external;
    function setMaxSlippage(uint16 _maxSlippage) external;

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    event LendingVaultSet(address indexed sender, address indexed lendingVault);

    event VaultDeposit(address indexed vault, address indexed token, uint256 assets, uint256 shares);
    event VaultWithdraw(address indexed vault, address indexed token, uint256 assets, uint256 shares);
    event StrategyExchange(address indexed from, address indexed to, uint256 amountFrom, uint256 amountOut);

    event VaultAdded(address indexed vault, address indexed asset);
    event VaultRemoved(address indexed vault, address indexed asset);

    event StrategyDeposit(address indexed sender, address token, uint256 indexed amount);
    event StrategyWithdraw(address indexed sender, address token, uint256 indexed amount);

    event TokensRecovered(address indexed sender, address indexed receiver, address indexed token, uint256 amount);

    event CurvePoolSet(address indexed pool);
    event CurveTokenAdded(address indexed token);
    event CurveTokenRemoved(address indexed token);

    event MaxSlippageSet(address indexed sender, uint16 indexed maxSlippage);

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    error OnlyLendingVaultOrOwner();
    error ArrayLengthsMustMatch();
    error LendingVaultAlreadySet();
    error VaultNotSupported();
    error InvalidVaultAddress();
    error CannotBeZeroAddress();
}
