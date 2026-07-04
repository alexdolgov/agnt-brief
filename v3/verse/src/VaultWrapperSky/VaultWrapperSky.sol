// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

error SlippageTolerance();

interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

interface IOriginalVault is IERC20 {
    function deposit(uint256 amount) external;
    function claimInterest() external returns (uint256 interestAmount);
    function compoundInterest() external returns (uint256 newShares);
    function getPendingInterest(address user) external view returns (uint256);
    function USD_TOKEN() external view returns (address);
}

interface IDssPsm {
    function buyGem(address _usr, uint256 _gemAmt) external;
    function sellGem(address _usr, uint256 _gemAmt) external;
}

contract VaultWrapperSky {

    uint256 private _status;

    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    // Ethereum Mainnet addresses
    address private constant ORIGINAL_VAULT_ADDRESS = 0x11cEeE394842d9492f2C97050f66dE0e3f89D3A6;
    address private constant SKY_PSM_DAI = 0xf6e72Db5454dd049d0788e411b06CfAF16853042;
    address private constant SKY_PSM_USDS = 0xA188EEC8F81263234dA3622A406892F3D630f98c;
    address private constant DAI_TOKEN = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
    address private constant USDS_TOKEN = 0xdC035D45d973E3EC169d2276DDab16f1e407384F;

    modifier nonReentrant() {
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");
        _status = _ENTERED;
        _;
        _status = _NOT_ENTERED;
    }

    IOriginalVault public immutable originalVault;
    IDssPsm public immutable skyPsmDAI;
    IDssPsm public immutable skyPsmUSDS;

    address public immutable daiToken;
    address public immutable usdsToken;
    address public immutable vaultAsset;
    address public immutable vaultSharesToken;

    event DepositedWithDAI(
        address indexed user,
        uint256 daiAmountIn,
        uint256 usdcAmountDeposited,
        uint256 sharesReceivedByUser
    );

    event DepositedWithUSDS(
        address indexed user,
        uint256 usdsAmountIn,
        uint256 usdcAmountDeposited,
        uint256 sharesReceivedByUser
    );

    receive()
        external
        payable {}

    fallback()
        external
        payable {}

    constructor() {
        originalVault = IOriginalVault(ORIGINAL_VAULT_ADDRESS);
        skyPsmDAI = IDssPsm(SKY_PSM_DAI);
        skyPsmUSDS = IDssPsm(SKY_PSM_USDS);

        daiToken = DAI_TOKEN;
        usdsToken = USDS_TOKEN;

        vaultSharesToken = ORIGINAL_VAULT_ADDRESS;
        vaultAsset = originalVault.USD_TOKEN();

        _status = _NOT_ENTERED;
    }

    function depositWithDAI(
        uint256 _daiAmountIn,
        uint256 _minUsdcAmountOut
    )
        external
        nonReentrant
        returns (uint256 shares)
    {
        address user = msg.sender;

        IERC20(daiToken).transferFrom(
            user,
            address(this),
            _daiAmountIn
        );

        IERC20(daiToken).approve(
            address(skyPsmDAI),
            _daiAmountIn
        );

        uint256 usdcBalanceBefore = IERC20(vaultAsset).balanceOf(
            address(this)
        );

        // Convert DAI amount (18 decimals) to USDC format (6 decimals)
        uint256 gemAmt = _daiAmountIn / 1e12;

        skyPsmDAI.buyGem(
            address(this),
            gemAmt
        );

        uint256 usdcBalanceAfter = IERC20(vaultAsset).balanceOf(
            address(this)
        );

        uint256 usdcAmountObtained = usdcBalanceAfter - usdcBalanceBefore;

        if (usdcAmountObtained < _minUsdcAmountOut) {
            revert SlippageTolerance();
        }

        IERC20(daiToken).approve(
            address(skyPsmDAI),
            0
        );

        IERC20(vaultAsset).approve(
            address(originalVault),
            usdcAmountObtained
        );

        uint256 sharesBalanceBefore = IERC20(vaultSharesToken).balanceOf(
            address(this)
        );

        originalVault.deposit(
            usdcAmountObtained
        );

        uint256 sharesBalanceAfter = IERC20(vaultSharesToken).balanceOf(
            address(this)
        );

        uint256 sharesMinted = sharesBalanceAfter - sharesBalanceBefore;

        IERC20(vaultAsset).approve(
            address(originalVault),
            0
        );

        IERC20(vaultSharesToken).transfer(
            user,
            sharesMinted
        );

        emit DepositedWithDAI(
            user,
            _daiAmountIn,
            usdcAmountObtained,
            sharesMinted
        );

        return sharesMinted;
    }

    function depositWithUSDS(
        uint256 _usdsAmountIn,
        uint256 _minUsdcAmountOut
    )
        external
        nonReentrant
        returns (uint256 shares)
    {
        address user = msg.sender;

        IERC20(usdsToken).transferFrom(
            user,
            address(this),
            _usdsAmountIn
        );

        IERC20(usdsToken).approve(
            address(skyPsmUSDS),
            _usdsAmountIn
        );

        uint256 usdcBalanceBefore = IERC20(vaultAsset).balanceOf(
            address(this)
        );

        // Convert USDS amount (18 decimals) to USDC format (6 decimals)
        uint256 gemAmt = _usdsAmountIn / 1e12;

        skyPsmUSDS.buyGem(
            address(this),
            gemAmt
        );

        uint256 usdcBalanceAfter = IERC20(vaultAsset).balanceOf(
            address(this)
        );

        uint256 usdcAmountObtained = usdcBalanceAfter - usdcBalanceBefore;

        if (usdcAmountObtained < _minUsdcAmountOut) {
            revert SlippageTolerance();
        }

        IERC20(usdsToken).approve(
            address(skyPsmUSDS),
            0
        );

        IERC20(vaultAsset).approve(
            address(originalVault),
            usdcAmountObtained
        );

        uint256 sharesBalanceBefore = IERC20(vaultSharesToken).balanceOf(
            address(this)
        );

        originalVault.deposit(
            usdcAmountObtained
        );

        uint256 sharesBalanceAfter = IERC20(vaultSharesToken).balanceOf(
            address(this)
        );

        uint256 sharesMinted = sharesBalanceAfter - sharesBalanceBefore;

        IERC20(vaultAsset).approve(
            address(originalVault),
            0
        );

        IERC20(vaultSharesToken).transfer(
            user,
            sharesMinted
        );

        emit DepositedWithUSDS(
            user,
            _usdsAmountIn,
            usdcAmountObtained,
            sharesMinted
        );

        return sharesMinted;
    }
}
