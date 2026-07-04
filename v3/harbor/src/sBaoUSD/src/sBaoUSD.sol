// SPDX-License-Identifier: MIT License
pragma solidity 0.8.21;

import "lib/solmate/src/mixins/ERC4626.sol";

interface IERC20 {
    function transfer(address, uint) external returns (bool);
    function transferFrom(address, address, uint) external returns (bool);
    function balanceOf(address) external view returns (uint);
}

/**
 * @title sBaoUSD
 * @dev Auto-compounding ERC4626 wrapper for sBaoUSD.
 * WARNING: While this vault is safe to be used as collateral in lending markets, it should not be allowed as a borrowable asset.
 * Any protocol in which sudden, large, and atomic increases in the value of an asset may be a security risk should not integrate this vault.
 */
contract sBaoUSD is ERC4626 {
    
    uint constant MIN_BALANCE = 10**16; // 1 cent
    uint public constant MIN_SHARES = 10**18;
    uint public constant MAX_ASSETS = 10**32; // 100 trillion BaoUSD
    ERC20 public immutable baousd;
    address public gov;
    address public pendingGov;
    address public operator;
    mapping (uint => uint) public weeklyRevenue;

    /**
     * @dev Constructor for sBaoUSD contract.
     * WARNING: MIN_SHARES will always be unwithdrawable from the vault. Deployer should deposit enough to mint MIN_SHARES to avoid causing user grief.
     * @param _baousd Address of the BaoUSD token.
     * @param _gov Address of the governance.
     */
    constructor(
        address _baousd,
        address _gov,
        address _operator
    ) ERC4626(ERC20(_baousd), "Staked BaoUSD", "sBaoUSD") {
        baousd = ERC20(_baousd);
        gov = _gov;
        operator = _operator;
    }

    modifier onlyGov() {
        require(msg.sender == gov, "ONLY GOV");
        _;
    }

    modifier onlyOperator() {
        require(msg.sender == gov || msg.sender == operator, "ONLY OPERATOR");
        _;
    }

    /**
     * @dev Calculates the total assets controlled by the contract.
     * Weekly revenue is distributed linearly over the following week.
     * @return The total assets in the contract.
     */
function totalAssets() public view override returns (uint) {
    uint week = block.timestamp / 7 days;
    uint timeElapsed = block.timestamp % 7 days;
    uint remainingLastRevenue = weeklyRevenue[week - 1] * (7 days - timeElapsed) / 7 days;
    uint actualAssets = baousd.balanceOf(address(this)) - remainingLastRevenue - weeklyRevenue[week];
    return actualAssets < MAX_ASSETS ? actualAssets : MAX_ASSETS;
}

    /**
     * @dev Allows users to deposit BaoUSD as revenue.
     * WARNING: Never expose this directly to a UI as it's likely to cause a loss unless a transaction is executed immediately.
     * @param exactBaoUSDIn The exact amount of BaoUSD to deposit.
     */
    function depositRevenue(uint exactBaoUSDIn) external {
        asset.transferFrom(msg.sender, address(this), exactBaoUSDIn);
        weeklyRevenue[block.timestamp / 7 days] += exactBaoUSDIn;
        emit Revenue(msg.sender, exactBaoUSDIn);
    }

    /**
     * @dev Sets a new pending governance address.
     * @param _gov The address of the new pending governance.
     */
    function setPendingGov(address _gov) external onlyGov {
        pendingGov = _gov;
    }

    /**
     * @dev Sets a new operator address.
     * @param _operator New operator address.
     */
    function setOperator(address _operator) external onlyGov {
        operator = _operator;
    }

    /**
     * @dev Allows the pending governance to accept its role.
     */
    function acceptGov() external {
        require(msg.sender == pendingGov, "ONLY PENDINGGOV");
        gov = pendingGov;
        pendingGov = address(0);
    }

    /**
     * @dev Allows governance to sweep any ERC20 token from the contract.
     * @dev Excludes the ability to sweep BaoUSD tokens.
     * @param token The address of the ERC20 token to sweep.
     * @param amount The amount of tokens to sweep.
     * @param to The recipient address of the swept tokens.
     */
    function sweep(address token, uint amount, address to) public onlyGov {
        require(address(baousd) != token, "Not authorized");
        IERC20(token).transfer(to, amount);
    }

    event Revenue(address indexed caller, uint exactBaoUSDIn);
}
