// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.11;

import "communal/ReentrancyGuard.sol";
import "communal/SafeERC20.sol";
import "local/interfaces/ISwapRouter.sol";
import "communal/TransferHelper.sol";
//import "forge-std/console.sol";

interface ILSDVault {
    function exit(uint256 amount) external;
}

interface ILSDVaultV2 {
    function deposit(address lsd, uint256 amount) external;
    function depositNoCapCheck(address lsd, uint256 amount) external;
    function isLsdEnabled(address lsd) external returns(bool);
    function getLsdIndex(address lsd) external returns(uint256);
    function remainingRoomToCap(address lsd, uint256 marginalDeposit) external returns(uint256);
}

interface FRXETH {
    function submitAndDeposit(address recipient) payable external;
}

interface SFRXETH {
    function deposit(uint256 assets, address receiver) external;
}

interface RETH {
    function swapTo(uint256 _uniswapPortion, uint256 _balancerPortion, uint256 _minTokensOut, uint256 _idealTokensOut) payable external;
}

interface IWETH is IERC20{
    function deposit() payable external;
    function withdraw(uint wad) external;
}

interface IWStETH is IERC20{
    function wrap(uint256 _stETHAmount) external;
}

contract unshETHZapv2 is ReentrancyGuard  {
    using SafeERC20 for IERC20;

    address public constant lsdVaultAddressV1 = 0xE76Ffee8722c21b390eebe71b67D95602f58237F;
    address public constant unshETHAddressV1 = 0x846982C0a47b0e9f4c13F3251ba972Bb8D32a8cA;
    address public constant wstETHAddress = 0x7f39C581F595B53c5cb19bD0b3f8dA6c935E2Ca0;
    address public constant frxETHMinterAddress = 0xbAFA44EFE7901E04E39Dad13167D089C559c1138;
    address public constant frxETHAddress = 0x5E8422345238F34275888049021821E8E08CAa1f;
    address public constant sfrxETHAddress = 0xac3E018457B222d93114458476f3E3416Abbe38F;
    address public constant rETHRouterAddress = 0x16D5A408e807db8eF7c578279BEeEe6b228f1c1C;
    address public constant rETHAddress = 0xae78736Cd615f374D3085123A210448E74Fc6393;
    address public constant cbETHAddress = 0xBe9895146f7AF43049ca1c1AE358B0541Ea49704;
    address public constant usdtAddress = 0xdAC17F958D2ee523a2206206994597C13D831ec7;
    address public constant wethAddress = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
    address public constant stEthAddress = 0xae7ab96520DE3A18E5e111B5EaAb095312D7fE84;

    address public immutable lsdVaultAddressV2; // 0x00..;
    address public immutable unshETHAddressV2; //0x00...;

    // uniswapv3 contracts
    ISwapRouter public uniswapRouterV3 = ISwapRouter(address(0xE592427A0AEce92De3Edee1F18E0157C05861564));
    uint24 public constant POOLFEE = 500; // pool fee to use uniswapv3. for now its set to 0.05% as default

    //constructor that sets up all the addresses
    constructor(address _lsdVaultAddressV2, address _unshETHAddressV2) {

        lsdVaultAddressV2 = _lsdVaultAddressV2;
        unshETHAddressV2 = _unshETHAddressV2;

        //give infinite approval for the lsd vault to spend the wstETH, sfrxETH, rETH, and cbETH
        TransferHelper.safeApprove(wstETHAddress, lsdVaultAddressV2, type(uint256).max);
        TransferHelper.safeApprove(sfrxETHAddress, lsdVaultAddressV2, type(uint256).max);
        TransferHelper.safeApprove(rETHAddress, lsdVaultAddressV2, type(uint256).max);
        TransferHelper.safeApprove(cbETHAddress, lsdVaultAddressV2, type(uint256).max);

        //approve weth and usdt for uniswap to facilitate swapping into lsds
        TransferHelper.safeApprove(wethAddress, address(uniswapRouterV3), type(uint256).max);
        TransferHelper.safeApprove(usdtAddress, address(uniswapRouterV3), type(uint256).max);

        //approve unsheth to be burnt by lsdVaultv1 in migrate
        TransferHelper.safeApprove(unshETHAddressV1, lsdVaultAddressV1, type(uint256).max);

        //approvals to facilitate wrapping of frxETH and stETH
        TransferHelper.safeApprove(frxETHAddress, sfrxETHAddress, type(uint256).max);
        TransferHelper.safeApprove(wstETHAddress, stEthAddress, type(uint256).max);
    }

    function mint_sfrxETH() external payable {
        _mint_sfrxETH(msg.value);
    }

    function _mint_sfrxETH(uint256 ethAmount) internal {
        // Mint sfrxETH
        FRXETH(frxETHMinterAddress).submitAndDeposit{value:ethAmount}(address(this));
        // Get balance of sfrxETH minted
        uint256 sfrxETHBalance = IERC20(sfrxETHAddress).balanceOf(address(this));
        // Check to see that the balance minted is greater than 0
        require(sfrxETHBalance > 0, 'sfrxETH minting failed');
        // Call LSDVault to mint unshETH
        _deposit_lsd(sfrxETHAddress, sfrxETHBalance);
    }

    function mint_wstETH() external payable {
        _mint_wstETH(msg.value);
    }

    function _mint_wstETH(uint256 ethAmount) internal {
        // Mint wstETH
        (bool success, )= address(wstETHAddress).call{value:ethAmount}("");
        // Check the success of the wstETH mint
        require(success, "wstETH minting failed");
        // Get balance of wstETH minted
        uint256 wstETHBalance = IERC20(wstETHAddress).balanceOf(address(this));
        // Call LSDVault to mint unshETH
        _deposit_lsd(wstETHAddress, wstETHBalance);
    }

    function mint_rETH(uint256 _uniswapPortion, uint256 _balancerPortion, uint256 _minTokensOut, uint256 _idealTokensOut) external payable {
        //Mint rETH
        RETH(rETHRouterAddress).swapTo{value:msg.value}(_uniswapPortion, _balancerPortion, _minTokensOut, _idealTokensOut);
        // Get balance of rETH minted
        uint256 rETHBalance = IERC20(rETHAddress).balanceOf(address(this));
        // Check to see that the balance minted is greater than or equal to the minTokensOut
        require(rETHBalance >= _minTokensOut, 'rETH minting failed');
        // Call LSDVault to mint unshETH
        _deposit_lsd(rETHAddress, rETHBalance);
    }

    function deposit_lsd(address lsdAddress, uint256 amount) external  {
//        require(ILSDVaultV2(lsdVaultAddressV2).isLsdEnabled(lsdAddress), "LSD is not enabled");
        // Assume user has approved token
        TransferHelper.safeTransferFrom(lsdAddress, msg.sender, address(this), amount);
        _deposit_lsd(lsdAddress, amount);
    }

    function deposit_stEth(uint256 stETHAmount) external nonReentrant {
        // Deposit stETH into wstETH
        IWStETH(wstETHAddress).wrap(stETHAmount);
        // Get the wrapped balance
        uint256 wstETHAmount = IERC20(wstETHAddress).balanceOf(address(this));
        // Deposit into lsd vault
        _deposit_lsd(wstETHAddress, wstETHAmount);
    }

    function _deposit_frxEth(uint256 frxETHAmount) internal {
        // Deposit frxETH into sfrxETH
        SFRXETH(sfrxETHAddress).deposit(frxETHAmount, address(this));
        // Get the wrapped balance
        uint256 sfrxETHAmount = IERC20(sfrxETHAddress).balanceOf(address(this));
        // Deposit into lsd vault
        _deposit_lsd(sfrxETHAddress, sfrxETHAmount);
    }

    function _deposit_lsd(address lsdAddress, uint256 amount) internal {
        // Call LSDVault to mint unshETH
        ILSDVaultV2(lsdVaultAddressV2).deposit(lsdAddress, amount);
        // Send unsheth to the msg.sender
        TransferHelper.safeTransfer(unshETHAddressV2, msg.sender, IERC20(unshETHAddressV2).balanceOf(address(this)));
    }


    //Allows user to migrate their unshETH v1 to v2
    function migrate(uint256 amount) public nonReentrant {
        //assume the user has approved the amount
        //transfer unsheth to this contract
        TransferHelper.safeTransferFrom(unshETHAddressV1, msg.sender, address(this), amount);

        //the contract will burn unshETHV1 and receive each of the underlying LSDs
        ILSDVault(lsdVaultAddressV1).exit(amount);
        // Get balance of wstETH and deposit to new vault
        uint256 wstETHBalance = IERC20(wstETHAddress).balanceOf(address(this));
        //print the balance of each token
        uint256 sfrxETHBalance = IERC20(sfrxETHAddress).balanceOf(address(this));
        uint256 rETHBalance = IERC20(rETHAddress).balanceOf(address(this));
        uint256 cbETHBalance = IERC20(cbETHAddress).balanceOf(address(this));

        ILSDVaultV2 vaultV2 = ILSDVaultV2(lsdVaultAddressV2);

        vaultV2.depositNoCapCheck(wstETHAddress, wstETHBalance);
        vaultV2.depositNoCapCheck(sfrxETHAddress, sfrxETHBalance);
        vaultV2.depositNoCapCheck(rETHAddress, rETHBalance);
        vaultV2.depositNoCapCheck(cbETHAddress, cbETHBalance);

        uint256 unshETHv2Bal = IERC20(unshETHAddressV2).balanceOf(address(this));
        TransferHelper.safeTransfer(unshETHAddressV2, msg.sender, unshETHv2Bal);
    }

    function mint_with_usdt(uint256 usdtAmount, uint256 amountOutMin, uint256 pathId) external nonReentrant {

        require(pathId <= 5, "pathId out of bounds");
        // transfer USDT to this contract
        TransferHelper.safeTransferFrom(usdtAddress, msg.sender, address(this), usdtAmount);

        //We choose 1 of 6 paths.
        //Paths 0 and 1 swap usdt to ETH then deposits that ETH to mint wstETH and sfrxETH, then mint unshETH
        //Paths 2 to 5 swap usdt->weth->lsd then mints unshETH with that
        if(pathId == 0) {
            //swap usdt to eth
            uint256 ethAmountOut = _swap_usdt_ETH(usdtAmount, amountOutMin);
            //mint wstETH->unshETH with ETH
            _mint_wstETH(ethAmountOut);
        } else if(pathId == 1) {
            //swap usdt to eth
            uint256 ethAmountOut = _swap_usdt_ETH(usdtAmount, amountOutMin);
            //mint sfrxETH->unshETH with ETH
            _mint_sfrxETH(ethAmountOut);
        } else if (pathId == 2) {
            //swap usdt to cbETH
            uint256 cbEthAmountOut = _swap_usdt_lsd(usdtAmount, amountOutMin, cbETHAddress);
            //mint unshETH with cbETH
            _deposit_lsd(cbETHAddress, cbEthAmountOut);
        } else if (pathId == 3) {
            //swap usdt to rETH
            uint256 rETHAmountOut = _swap_usdt_lsd(usdtAmount, amountOutMin, rETHAddress);
            //mint unshETH with rETH
            _deposit_lsd(rETHAddress, rETHAmountOut);
        } else if (pathId == 4) {
            //swap usdt to wstETH
            uint256 wstETHAmountOut = _swap_usdt_lsd(usdtAmount, amountOutMin, wstETHAddress);
            //mint unshETH with wstETH
            _deposit_lsd(wstETHAddress, wstETHAmountOut);
        } else if (pathId == 5) {
            //swap usdt to frxETH (sfrxETH not liquid)
            uint256 frxEthAmountOut = _swap_usdt_lsd(usdtAmount, amountOutMin, frxETHAddress);
            //mint unshETH with frxETH->sfrxETH
            _deposit_frxEth(frxEthAmountOut);
        }
    }

    function _swap_usdt_ETH(uint256 _usdtAmount, uint256 _amountOutMin) internal returns(uint256) {

        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter.ExactInputSingleParams({
            tokenIn: usdtAddress,
            tokenOut: wethAddress,
            fee: POOLFEE,
            recipient: address(this),
            deadline: block.timestamp + 3600,
            amountIn: _usdtAmount,
            amountOutMinimum: _amountOutMin,
            sqrtPriceLimitX96: 0
        });

        uint256 wethAmountOut = uniswapRouterV3.exactInputSingle(params);

        //convert weth to ETH
        IWETH(wethAddress).withdraw(wethAmountOut);
        return(wethAmountOut);
    }

    function _swap_usdt_lsd(uint256 _usdtAmount, uint256 _amountOutMin, address _lsdAddress) internal returns(uint256) {

        ISwapRouter.ExactInputParams memory params = ISwapRouter.ExactInputParams({
            path: abi.encodePacked(usdtAddress, POOLFEE, wethAddress, POOLFEE, _lsdAddress),
            recipient: address(this),
            deadline: block.timestamp + 3600,
            amountIn: _usdtAmount,
            amountOutMinimum: _amountOutMin
        });

        uint256 lsdAmountOut = uniswapRouterV3.exactInput(params);
        return(lsdAmountOut);
    }

    function mint_unsheth_with_eth(uint256 amountOutMin, uint256 pathId) external payable nonReentrant {
        // Validate the path
        require(pathId <= 5, "Invalid path");
        // If one of the paths that requires a minimum amount, validate it
        if(pathId >= 2) {
            require(amountOutMin > 0, "Specify amountOutMin if picking pathId 2 to 5");
        }
        if (pathId <= 1) {
            _ETH_to_unsheth_mintPaths(msg.value, pathId);
        } else {
            IWETH(wethAddress).deposit{value: msg.value}();
            uint256 wethAmount = IERC20(wethAddress).balanceOf(address(this));
            _weth_to_unsheth_swapPaths(wethAmount, amountOutMin, pathId);
        }
    }

    function _ETH_to_unsheth_mintPaths(uint256 ethAmount, uint256 pathId) internal {
        require(pathId <= 1, "only paths 0 and 1 allowed");
        if(pathId == 0) {
            _mint_wstETH(ethAmount);
        } else if(pathId == 1) {
            _mint_sfrxETH(ethAmount);
        }
    }

    function _weth_to_unsheth_swapPaths(uint256 wethAmount, uint256 amountOutMin, uint256 pathId) internal {
        require(pathId >= 2 && pathId <= 5, "only paths 2 to 5 allowed");
        if(pathId == 2) {
            //swap weth to cbETH
            uint256 cbEthAmountOut = _swap_weth_lsd(wethAmount, amountOutMin, cbETHAddress);
            //mint unshETH with cbETH
            _deposit_lsd(cbETHAddress, cbEthAmountOut);
        } else if (pathId == 3) {
            //swap weth to rETH
            uint256 rETHAmountOut = _swap_weth_lsd(wethAmount, amountOutMin, rETHAddress);
            //mint unshETH with rETH
            _deposit_lsd(rETHAddress, rETHAmountOut);
        } else if (pathId == 4) {
            //swap usdt to wstETH
            uint256 wstETHAmountOut = _swap_weth_lsd(wethAmount, amountOutMin, wstETHAddress);
            //mint unshETH with wstETH
            _deposit_lsd(wstETHAddress, wstETHAmountOut);
        } else if (pathId == 5) {
            //swap usdt to frxETH (sfrxETH not liquid)
            uint256 frxEthAmountOut = _swap_weth_lsd(wethAmount, amountOutMin, frxETHAddress);
            //mint unshETH with frxETH->sfrxETH
            _deposit_frxEth(frxEthAmountOut);
        }
    }

    function _swap_weth_lsd(uint256 _wethAmount, uint256 _amountOutMin, address _lsdAddress) internal returns(uint256) {

        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter.ExactInputSingleParams({
            tokenIn: wethAddress,
            tokenOut: _lsdAddress,
            fee: POOLFEE,
            recipient: address(this),
            deadline: block.timestamp + 3600,
            amountIn: _wethAmount,
            amountOutMinimum: _amountOutMin,
            sqrtPriceLimitX96: 0
        });

        uint256 lsdAmountOut = uniswapRouterV3.exactInputSingle(params);
        return(lsdAmountOut);
    }

    //Allow receiving eth to the contract
    receive() external payable {}
}