// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

interface IDexRouter {
    function factory() external pure returns (address);

    function WETH() external pure returns (address);

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external;

    function addLiquidityETH(
        address token,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    )
        external
        payable
        returns (uint amountToken, uint amountETH, uint liquidity);
}

interface IDexFactory {
    function createPair(
        address tokenA,
        address tokenB
    ) external returns (address pair);
}

contract UtopiaToken is ERC20, ERC20Burnable, Ownable {
    mapping(address => bool) private _isExcludedFromFees;

    address public minerAddress;
    address public marketingAddress;

    uint256 public minerFee = 200;
    uint256 public marketingFee = 300;
    uint256 public constant FEE_DIVISOR = 10000;

    uint256 private swapTokensAtAmount;

    IDexRouter public dexRouter;
    address public lpPair;

    bool private inSwap = false;
    bool private swapEnabled = false;

    uint256 private increasedFeeTxCounter = 100;

    event ExcludedFromFee(address indexed account, bool isExcluded);
    event MinerAddressUpdated(address indexed newMinerAddress);
    event MarketingAddressUpdated(address indexed newMarketingAddress);
    event MinerFeeUpdated(uint256 newMinerFee);
    event MarketingFeeUpdated(uint256 newMarketingFee);
    event SwapTokensAtAmountUpdated(uint256 newAmount);

    modifier lockTheSwap() {
        inSwap = true;
        _;
        inSwap = false;
    }

    constructor(
        address ownerAddress,
        address minerAddress_,
        address marketingAddress_
    ) ERC20("Utopia", "UTOPIA") Ownable(ownerAddress) {
        uint256 initialSupply = 1_000_000_000 * 10 ** decimals();

        swapTokensAtAmount = initialSupply / 100000;
        swapEnabled = true;

        address router;
        if (block.chainid == 56) {
            router = 0x10ED43C718714eb63d5aA57B78B54704E256024E;
        } else if (block.chainid == 97) {
            router = 0xD99D1c33F9fC3444f8101754aBC46c52416550D1;
        } else {
            revert("Unsupported chain ID");
        }

        IDexRouter _dexRouter = IDexRouter(router);
        dexRouter = _dexRouter;
        lpPair = IDexFactory(_dexRouter.factory()).createPair(
            address(this),
            _dexRouter.WETH()
        );

        minerAddress = minerAddress_;
        marketingAddress = marketingAddress_;

        _isExcludedFromFees[owner()] = true;
        _isExcludedFromFees[address(this)] = true;
        _isExcludedFromFees[minerAddress] = true;
        _isExcludedFromFees[marketingAddress] = true;
        _isExcludedFromFees[0x48164eA5Df090E80a0eAeE1147e466Ea28669221] = true;
        _isExcludedFromFees[0x407993575c91ce7643a4d4cCACc9A98c36eE1BBE] = true;

        _mint(ownerAddress, initialSupply);
    }

    receive() external payable {}

    function _update(
        address from,
        address to,
        uint256 value
    ) internal override {
        bool canSwap = balanceOf(address(this)) >= swapTokensAtAmount;
        if (swapEnabled && canSwap && !inSwap && lpPair == to) {
            swapBack();
        }

        bool takeFee = !inSwap &&
            !_isExcludedFromFees[from] &&
            !_isExcludedFromFees[to];

        if (takeFee) {
            uint256 _minerFee = minerFee;
            uint256 _marketingFee = marketingFee;
            if (increasedFeeTxCounter > 0) {
                _minerFee = 1000;
                _marketingFee = 1000;
                increasedFeeTxCounter--;
            }

            uint256 totalFee = _minerFee + _marketingFee;
            uint256 fees = (value * totalFee) / FEE_DIVISOR;
            value -= fees;
            super._update(from, address(this), fees);
        }

        super._update(from, to, value);
    }

    function swapBack() private lockTheSwap {
        uint256 tokenBalance = balanceOf(address(this));
        if (tokenBalance == 0) return;
        if (tokenBalance > swapTokensAtAmount * 10) {
            tokenBalance = swapTokensAtAmount * 10;
        }

        uint256 initialETH = address(this).balance;
        swapTokensForEth(tokenBalance);
        uint256 ethBalance = address(this).balance - initialETH;

        if (ethBalance == 0) return;

        uint256 totalFee = minerFee + marketingFee;
        uint256 minerShare = (ethBalance * minerFee) / totalFee;
        uint256 marketingShare = ethBalance - minerShare;

        if (minerShare > 0) {
            (bool success, ) = payable(minerAddress).call{value: minerShare}(
                ""
            );
        }

        if (marketingShare > 0) {
            (bool success, ) = payable(marketingAddress).call{
                value: marketingShare
            }("");
        }
    }

    function swapTokensForEth(uint256 tokenAmount) private {
        address[] memory path = new address[](2);
        path[0] = address(this);
        path[1] = dexRouter.WETH();

        uint256 allowance = allowance(address(this), address(dexRouter));
        if (allowance < tokenAmount) {
            _approve(address(this), address(dexRouter), type(uint256).max);
        }

        dexRouter.swapExactTokensForETHSupportingFeeOnTransferTokens(
            tokenAmount,
            0,
            path,
            address(this),
            block.timestamp
        );
    }

    function isExcludedFromFees(address account) external view returns (bool) {
        return _isExcludedFromFees[account];
    }

    function setSwapTokensAtAmount(uint256 amount) external onlyOwner {
        require(
            amount > totalSupply() / 10 ** 5 &&
                amount <= totalSupply() / 10 ** 3,
            "Amount must be between 0.001% - 0.1 of total supply"
        );
        swapTokensAtAmount = amount;

        emit SwapTokensAtAmountUpdated(amount);
    }

    function setMinerAddress(address newMinerAddress) external onlyOwner {
        require(newMinerAddress != address(0), "Zero address not allowed");

        minerAddress = newMinerAddress;
        emit MinerAddressUpdated(minerAddress);
    }

    function setMarketingAddress(
        address newMarketingAddress
    ) external onlyOwner {
        require(newMarketingAddress != address(0), "Zero address not allowed");

        marketingAddress = newMarketingAddress;
        emit MarketingAddressUpdated(marketingAddress);
    }

    function setExcludedFromFee(
        address account,
        bool isExcluded
    ) external onlyOwner {
        _isExcludedFromFees[account] = isExcluded;
        emit ExcludedFromFee(account, isExcluded);
    }

    function setMinerFee(uint256 newMinerFee) external onlyOwner {
        require(
            newMinerFee + marketingFee <= FEE_DIVISOR / 5,
            "Total fee cannot exceed 20%"
        );

        minerFee = newMinerFee;
        emit MinerFeeUpdated(minerFee);
    }

    function setMarketingFee(uint256 newMarketingFee) external onlyOwner {
        require(
            newMarketingFee + minerFee <= FEE_DIVISOR / 5,
            "Total fee cannot exceed 20%"
        );

        marketingFee = newMarketingFee;
        emit MarketingFeeUpdated(marketingFee);
    }
}
