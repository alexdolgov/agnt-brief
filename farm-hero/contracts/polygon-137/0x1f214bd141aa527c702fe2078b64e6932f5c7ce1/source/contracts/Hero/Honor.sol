// SPDX-License-Identifier: MIT

pragma solidity ^0.6.12;

import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/access/Ownable.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/math/SafeMath.sol";

import "./components/IUniswapPair.sol";
import "./components/IUniswapRouter.sol";
import "./components/IUniswapFactory.sol";

interface ITokenSwap {
    function Claim(IERC20 token) external;
}

contract HONOR is ERC20BurnableUpgradeSafe, 
    OwnableUpgradeSafe {
    
    using SafeMath for uint256;

    mapping(address=>bool) _minters;

    // --- support tax fee ---
    IUniswapV2Router02 public router;
    address public pair;

    uint256 public liquidityFee; // 10;
    uint256 public numTokensSellToAddToLiquidity; // 10_000_000 * 10**18;   // 10 K
    address public USDToken;
    ITokenSwap public TokenSwap;

    mapping(address => bool) private _isExcluded;
    bool inSwapAndLiquify;
    address public lpOwner;

    event SwapAndLiquify(
        uint256 tokensSwapped,
        uint256 usdReceived,
        uint256 tokensIntoLiqudity
    );

    modifier lockTheSwap() {
        inSwapAndLiquify = true;
        _;
        inSwapAndLiquify = false;
    }

    // --- support tax fee ---

    modifier onlyMinter {
        
        require(_msgSender() == farmAddress());
        _;
    }

    function initialize(uint256 _init_supply) public initializer {

        OwnableUpgradeSafe.__Ownable_init();
        ERC20UpgradeSafe.__ERC20_init("HONOR","HONOR");
        ERC20BurnableUpgradeSafe.__ERC20Burnable_init();

        if(_init_supply > 0)
            _mint(msg.sender, _init_supply);

    }

    function initTaxFee(IUniswapV2Router02 _router,
        address _usdToken,
        ITokenSwap _tokenSwap,
        address _lpOwner
    ) public onlyOwner {
        liquidityFee = 10;
        numTokensSellToAddToLiquidity = 10_000_000 * 10**18;

        USDToken = _usdToken;
        TokenSwap = _tokenSwap;
        router = _router;
        pair = IUniswapV2Factory(router.factory()).getPair(
            address(this),
            USDToken
        );
        lpOwner = _lpOwner;
        //exclude owner and this contract from fee
        _isExcluded[owner()] = true;
        _isExcluded[address(this)] = true;
    }

    function setMinter(address _address, bool _can) public onlyOwner {
        _minters[_address] = _can;
    }

    function isMinter(address _address) external view returns (bool){
        return _minters[_address];
    }
    
    function mint(address _to, uint256 _amount) public onlyMinter {
        _mint(_to, _amount);
    }

    function farmAddress() public view returns (address) {
        return 0x8e5860DF653A467D1cC5b6160Dd340E8D475724E;
    }

    // transfer tax fee

    function excludeFromFee(address account) public onlyOwner {
        _isExcluded[account] = true;
    }
    
    function includeInFee(address account) public onlyOwner {
        _isExcluded[account] = false;
    }

    function setNumTokensSellToAddToLiquidity(uint256 _numTokensSellToAddToLiquidity) external onlyOwner {
        require(_numTokensSellToAddToLiquidity > 0);

        numTokensSellToAddToLiquidity = _numTokensSellToAddToLiquidity;
    }

    function setLiquidityFee(uint256 _liquidityFee) external onlyOwner {
        require(_liquidityFee < 100);
        liquidityFee = _liquidityFee;
    }

    function setLPOwner(address _lpOwner) external onlyOwner {
        lpOwner = _lpOwner;
    }

    function setTokenSwap(address _tokenSwap) external onlyOwner {
        require(_tokenSwap != address(0));
        TokenSwap = ITokenSwap(_tokenSwap);
    }

    function _transfer(
        address sender,
        address recipient,
        uint256 amount
    ) internal virtual override(ERC20UpgradeSafe) {

        uint256 contractTokenBalance = balanceOf(address(this));
        bool overMinTokenBalance = contractTokenBalance >= numTokensSellToAddToLiquidity;

        if(pair != address(0) && overMinTokenBalance && !inSwapAndLiquify){
            //add liquidity
            swapAndLiquify(contractTokenBalance);
        }

        if (
            pair != address(0) &&
            address(router) != address(0) &&
            sender != pair && //Buy Token
            sender != address(router) && // Remove LP
            (!isExcludedFromFee(sender) && !isExcludedFromFee(recipient)) && // transfer whiteList
            liquidityFee > 0
        ) {
            uint256 fee = amount.mul(liquidityFee).div(100);
            if(fee > 0){
                super._transfer(sender, address(this), fee);
                amount = amount.sub(fee);
            }
        }

        super._transfer(sender, recipient, amount);
    }

    function swapAndLiquify(uint256 _balance) private lockTheSwap {
        // split the contract balance into halves
        uint256 half = _balance.div(2);
        uint256 otherHalf = _balance.sub(half);

        uint256 initialBalance = IERC20(USDToken).balanceOf(address(this));
        // swap tokens for USDToken
        swapTokensForUSD(half);
        // how much USDToken did we just swap into?
        uint256 newBalance = IERC20(USDToken).balanceOf(address(this)).sub(
            initialBalance
        );
        // add liquidity to uniswap
        addLiquidity(otherHalf, newBalance);
        emit SwapAndLiquify(half, newBalance, otherHalf);
    }

    function swapTokensForUSD(uint256 tokenAmount) private {
        require(address(TokenSwap) != address(0), "TokenSwap required");
        // generate the uniswap pair path of token -> usdc
        address[] memory path = new address[](2);
        path[0] = address(this);
        path[1] = USDToken;

        _approve(address(this), address(router), tokenAmount);

        // make the swap
        router.swapExactTokensForTokensSupportingFeeOnTransferTokens(
            tokenAmount,
            0, // accept any amount of USDToken
            path,
            address(TokenSwap),
            block.timestamp
        );

        TokenSwap.Claim(IERC20(USDToken));
    }

    function addLiquidity(uint256 tokenAmount, uint256 usdtAmount) private {
        // approve token transfer to cover all possible scenarios
        _approve(address(this), address(router), tokenAmount);
        IERC20(USDToken).approve(address(router), usdtAmount);
        // add the liquidity
        router.addLiquidity(
            address(this),
            USDToken,
            tokenAmount,
            usdtAmount,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
            lpOwner,
            block.timestamp
        );
    }

    function isExcludedFromFee(address account) public view returns(bool) {
        return _isExcluded[account];
    }

    function setRouter(address _router) external onlyOwner {
        require(_router != address(0));

        router = IUniswapV2Router02(_router);
        pair = IUniswapV2Factory(router.factory()).getPair(
            address(this),
            USDToken
        );
    }

}