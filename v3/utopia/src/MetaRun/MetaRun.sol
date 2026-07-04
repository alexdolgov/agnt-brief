// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

interface IERC20 {
    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function transfer(
        address recipient,
        uint256 amount
    ) external returns (bool);

    function allowance(
        address owner,
        address spender
    ) external view returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}

interface Token {
    function transferFrom(address, address, uint) external returns (bool);

    function transfer(address, uint) external returns (bool);
}

interface IUniswapV2Factory {
    function createPair(
        address tokenA,
        address tokenB
    ) external returns (address pair);
}

interface IUniswapV2Router02 {
    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;

    function factory() external pure returns (address);

    function WETH() external pure returns (address);
}

contract Ownable {
    address private _owner;

    constructor() {
        _owner = msg.sender;
        emit OwnershipTransferred(address(0), msg.sender);
    }

    function owner() public view returns (address) {
        return _owner;
    }

    modifier onlyOwner() {
        require(_owner == msg.sender, "Caller is not the owner");
        _;
    }

    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(
            newOwner != address(0x0),
            "call the renounceOwnership for zero address"
        );

        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

contract MetaRun is IERC20, Ownable {
    uint256 public constant VERSION = 2;

    mapping(address => uint256) private rOwned;
    mapping(address => mapping(address => uint256)) private _allowances;
    mapping(address => bool) private _isExcludedFromFee;

    uint256 private constant MAX = ~uint256(0);
    uint256 private immutable tTotal;
    uint256 private rTotal;

    uint16 public immutable reflectionTax;
    uint16 public buyTax;
    uint16 public sellTax;
    uint16 private _tax = 0;

    string private constant _name = "MetaRun";
    string private constant _symbol = "MRUN";
    uint8 private constant _decimals = 18;

    address payable public treasuryWallet;

    IUniswapV2Router02 public uniswapV2Router;
    address public immutable uniswapV2Pair;

    bool private inSwap = false;
    bool public swapEnabled = true;
    uint256 public swapTokensAtAmount;

    event UpdatedTreasuryWallet(address indexed account);
    event FeesLocked();
    event ChangedSwapEnable(bool enable);
    event ExcludedAccountsFromFees(address[] accounts, bool excluded);
    event WithdrawedTokens(
        address indexed token,
        address indexed to,
        uint amount
    );
    event SwapTokensForEthFailed(uint256 amount);
    event Reflected(address sender, uint256 amount);
    event ChangedSwapTokensAtAmount(uint256 amount);

    modifier lockTheSwap() {
        inSwap = true;
        _;
        inSwap = false;
    }

    constructor() {
        transferOwnership(0xC2bBE0C5A2DE842A1E02F0218f344728E6Fd1A87);

        uint256 totalSupply_ = 1000000000 * 10 ** _decimals;

        tTotal = totalSupply_;
        rTotal = (MAX - (MAX % totalSupply_));

        rOwned[owner()] = rTotal;

        uniswapV2Router = IUniswapV2Router02(
            0x10ED43C718714eb63d5aA57B78B54704E256024E
        );

        uniswapV2Pair = IUniswapV2Factory(uniswapV2Router.factory()).createPair(
                address(this),
                uniswapV2Router.WETH()
            );

        treasuryWallet = payable(owner());

        reflectionTax = 0;
        buyTax = 150;
        sellTax = 350;

        swapTokensAtAmount = totalSupply_ / 10000;

        _isExcludedFromFee[owner()] = true;
        _isExcludedFromFee[address(this)] = true;
        _isExcludedFromFee[treasuryWallet] = true;

        emit Transfer(address(0x0), owner(), totalSupply_);
    }

    function name() public pure returns (string memory) {
        return _name;
    }

    function symbol() public pure returns (string memory) {
        return _symbol;
    }

    function decimals() public pure returns (uint8) {
        return _decimals;
    }

    function totalSupply() public view override returns (uint256) {
        return tTotal;
    }

    function balanceOf(address account) public view override returns (uint256) {
        return tokenFromReflection(rOwned[account]);
    }

    function transfer(
        address recipient,
        uint256 amount
    ) public override returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }

    function allowance(
        address account,
        address spender
    ) public view override returns (uint256) {
        return _allowances[account][spender];
    }

    function approve(
        address spender,
        uint256 amount
    ) public override returns (bool) {
        _approve(msg.sender, spender, amount);
        return true;
    }

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) public override returns (bool) {
        uint256 senderAllowance = _allowances[sender][msg.sender];

        require(senderAllowance >= amount, "insufficient allowance");

        _approve(sender, msg.sender, senderAllowance - amount);

        _transfer(sender, recipient, amount);

        return true;
    }

    function tokenFromReflection(
        uint256 rAmount
    ) private view returns (uint256) {
        require(
            rAmount <= rTotal,
            "Amount must be less than total reflections"
        );
        uint256 currentRate = _getRate();
        return rAmount / currentRate;
    }

    function _approve(
        address account,
        address spender,
        uint256 amount
    ) private {
        require(account != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");
        _allowances[account][spender] = amount;
        emit Approval(account, spender, amount);
    }

    function _transfer(address from, address to, uint256 amount) private {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");
        require(amount > 0, "Transfer amount must be greater than zero");

        if (
            from != owner() &&
            to != owner() &&
            !inSwap &&
            from != uniswapV2Pair &&
            swapEnabled
        ) {
            uint256 contractTokenBalance = balanceOf(address(this));

            if (contractTokenBalance > swapTokensAtAmount)
                swapTokensForEth(contractTokenBalance);
        }

        _transferStandard(from, to, amount);
    }

    function swapTokensForEth(uint256 tokenAmount) private lockTheSwap {
        address[] memory path = new address[](2);
        path[0] = address(this);
        path[1] = uniswapV2Router.WETH();

        _approve(address(this), address(uniswapV2Router), tokenAmount);

        try
            uniswapV2Router.swapExactTokensForETHSupportingFeeOnTransferTokens(
                tokenAmount,
                0, // accept any amount of ETH
                path,
                treasuryWallet,
                block.timestamp
            )
        {} catch {
            emit SwapTokensForEthFailed(tokenAmount);
        }
    }

    function setTreasuryAddress(address payable account) external onlyOwner {
        require(account != address(0x0), "treasury address cannot be zero");

        treasuryWallet = account;
        _isExcludedFromFee[account] = true;

        emit UpdatedTreasuryWallet(account);
    }

    function _transferStandard(
        address sender,
        address recipient,
        uint256 tAmount
    ) private {
        bool takeFee = !_isExcludedFromFee[sender] &&
            !_isExcludedFromFee[recipient] &&
            (sender == uniswapV2Pair || recipient == uniswapV2Pair) &&
            !inSwap;

        if (takeFee && sender == uniswapV2Pair) {
            _tax = buyTax;
        } else if (takeFee && recipient == uniswapV2Pair) {
            _tax = sellTax;
        } else {
            _tax = 0;
        }

        (
            uint256 rAmount,
            uint256 rTransferAmount,
            uint256 rTreasury,
            uint256 tTransferAmount,
            uint256 tTreasury
        ) = _getValues(takeFee, tAmount);

        rOwned[sender] = rOwned[sender] - rAmount;
        rOwned[recipient] = rOwned[recipient] + rTransferAmount;

        emit Transfer(sender, recipient, tTransferAmount);

        if (rTreasury > 0) {
            rOwned[address(this)] = rOwned[address(this)] + rTreasury;
            emit Transfer(sender, address(this), tTreasury);
        }
    }

    receive() external payable {}

    function _getValues(
        bool takeFees,
        uint256 tAmount
    ) private view returns (uint256, uint256, uint256, uint256, uint256) {
        (uint256 tTransferAmount, uint256 tTreasury) = _getTValues(
            takeFees,
            tAmount
        );

        (
            uint256 rAmount,
            uint256 rTransferAmount,
            uint256 rTreasury
        ) = _getRValues(tAmount, tTreasury);

        return (
            rAmount,
            rTransferAmount,
            rTreasury,
            tTransferAmount,
            tTreasury
        );
    }

    function _getTValues(
        bool takeFees,
        uint256 tAmount
    ) private view returns (uint256, uint256) {
        if (!takeFees) return (tAmount, 0);

        uint256 tTreasury = (tAmount * _tax) / 10000;
        uint256 tTransferAmount = tAmount - tTreasury;
        return (tTransferAmount, tTreasury);
    }

    function _getRValues(
        uint256 tAmount,
        uint256 tTreasury
    ) private view returns (uint256, uint256, uint256) {
        uint256 rate = _getRate();

        uint256 rAmount = tAmount * rate;
        uint256 rTreasury = tTreasury * rate;
        uint256 rTransferAmount = rAmount - rTreasury;

        return (rAmount, rTransferAmount, rTreasury);
    }

    function _getRate() private view returns (uint256) {
        (uint256 rSupply, uint256 tSupply) = _getCurrentSupply();
        return rSupply / tSupply;
    }

    function _getCurrentSupply() private view returns (uint256, uint256) {
        uint256 rSupply = rTotal;
        uint256 tSupply = tTotal;
        if (rSupply < rTotal / tTotal) return (rTotal, tTotal);
        return (rSupply, tSupply);
    }

    function lockFees() public onlyOwner {
        buyTax = 0;
        sellTax = 0;

        emit FeesLocked();
    }

    function toggleSwap(bool enable) external onlyOwner {
        require(swapEnabled != enable, "Already set");
        swapEnabled = enable;

        emit ChangedSwapEnable(enable);
    }

    function setSwapTokensAtAmount(uint256 amount) external onlyOwner {
        require(
            amount <= tTotal / 10000,
            "Amount must be less than 0.01% of total supply"
        );
        require(
            amount >= tTotal / 100000,
            "Amount must be greater than 0.001% of total supply"
        );

        swapTokensAtAmount = amount;

        emit ChangedSwapTokensAtAmount(amount);
    }

    function excludeMultipleAccountsFromFees(
        address[] calldata accounts,
        bool excluded
    ) external onlyOwner {
        for (uint256 i = 0; i < accounts.length; i++) {
            _isExcludedFromFee[accounts[i]] = excluded;
        }

        emit ExcludedAccountsFromFees(accounts, excluded);
    }

    function getExcludedFromFee(address account) external view returns (bool) {
        return _isExcludedFromFee[account];
    }
}