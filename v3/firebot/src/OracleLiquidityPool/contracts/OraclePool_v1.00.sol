pragma solidity ^0.8.30;
/* SPDX-License-Identifier: MIT
  _____ _          _          _         
 |  ___(_)_ __ ___| |    __ _| |__  ___ 
 | |_  | | '__/ _ \ |   / _` | '_ \/ __|
 |  _| | | | |  __/ |__| (_| | |_) \__ \
 |_|   |_|_|  \___|_____\__,_|_.__/|___/

 DCI/USDT0 Oracle Based Liquidity Pool v1.00
*/

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

interface IOracle {
    function lastPrice(address user) external view returns (uint256);
    function lastUpdate(address user) external view returns (uint256);
}

interface IComet {
    function supply(address asset, uint256 amount) external;
    function withdraw(address asset, uint256 amount) external;
}

contract OracleLiquidityPool is Ownable {
    constructor() Ownable(msg.sender) {}

    using SafeERC20 for IERC20;
    
    IOracle constant ORACLE_CONTRACT = IOracle(0x1267398F95a7ded2c5eAABD5508C047afF008592);

    address constant ORACLE_ADDR_1 = 0x30968Fefd41C7DE2fa9EDEF73fc65f7283a5063a;
    address constant ORACLE_ADDR_2 = 0x324F90Fc178aa849056f72ed29D5CB705f2f3C84;
    address constant ORACLE_ADDR_3 = 0x06043654F877ba959f679F8E068D01668d456557;
    address constant ORACLE_ADDR_4 = 0x8ebcbed8A581c158465a148aCee969B7D72Be0dB;
    address constant ORACLE_ADDR_5 = 0xF19B21CEdeB167F18015aedf898e86404550BD53;

    IComet  constant COMET = IComet(0xaeB318360f27748Acb200CE616E389A6C9409a07);
    
    IERC20 constant TOKEN = IERC20(0xc91953E110EbB0039859304A0d1b64f8450763fC);
    IERC20 constant USDT0 = IERC20(0xc2132D05D31c914a87C6611C10748AEb04B58e8F);
    IERC20 constant CUSDT0 = IERC20(address(COMET));

    uint256 constant MAX_ORACLE_AGE = 6 hours;
        
    function price() public view returns (uint256) {
        address[5] memory src = [ORACLE_ADDR_1, ORACLE_ADDR_2, ORACLE_ADDR_3, ORACLE_ADDR_4, ORACLE_ADDR_5];
        uint256 a; uint256 b; uint256 c; // top-3 (a=max, b=2nd, c=3rd)
        for (uint256 i = 0; i < 5; i++) {
            uint256 x = ORACLE_CONTRACT.lastPrice(src[i]);
            if (x >= a) { c = b; b = a; a = x; }
            else if (x >= b) { c = b; b = x; }
            else if (x >= c) { c = x; }
        }
        return c;
    }

    function bid() public view returns (uint256) {
        address[5] memory src = [ORACLE_ADDR_1, ORACLE_ADDR_2, ORACLE_ADDR_3, ORACLE_ADDR_4, ORACLE_ADDR_5];
        uint256 m = type(uint256).max;
        for (uint256 i = 0; i < 5; i++) {
            uint256 x = ORACLE_CONTRACT.lastPrice(src[i]);
            if (x < m) m = x;
        }
        return m * 10000 / 10015;
    }

    function ask() public view returns (uint256) {
        address[5] memory src = [ORACLE_ADDR_1, ORACLE_ADDR_2, ORACLE_ADDR_3, ORACLE_ADDR_4, ORACLE_ADDR_5];
        uint256 m = 0;
        for (uint256 i = 0; i < 5; i++) {
            uint256 x = ORACLE_CONTRACT.lastPrice(src[i]);
            if (x > m) m = x;
        }
        return m * 10015 / 10000;
    }

    function spread() public view returns (uint256) {
        uint256 b = bid();
        if (b == 0) return 0;
        return 1e18 * ask() / b - 1e18;
    }

    function freshOracleCount() public view returns (uint256 count) {
        address[5] memory src = [ORACLE_ADDR_1, ORACLE_ADDR_2, ORACLE_ADDR_3, ORACLE_ADDR_4, ORACLE_ADDR_5];
        for (uint256 i = 0; i < 5; i++) {
            uint256 t = ORACLE_CONTRACT.lastUpdate(src[i]);
            if (t <= block.timestamp && block.timestamp - t <= MAX_ORACLE_AGE) {
                count++;
            }
        }
    }

    function trust() public view returns (bool) {
        uint256 s = spread();
        return (s > 0 && s <= 1e16 && freshOracleCount() >= 5);
    }

    function swapExactUsdt0ForToken(uint256 amountIn, uint256 minAmountOut, uint256 deadline) external returns (uint256 amountOut) {
        require(block.timestamp <= deadline, "Order expired");
        amountOut = (amountIn * 1e30) / ask();
        require(amountOut >= minAmountOut, "Slippage too high");

        USDT0.safeTransferFrom(msg.sender, address(this), amountIn);
        depositOnCompound();
        TOKEN.safeTransfer(msg.sender, amountOut);
    }

    function swapExactTokenForUsdt0(uint256 amountIn, uint256 minAmountOut, uint256 deadline) external returns (uint256 amountOut) {
        require(block.timestamp <= deadline, "Order expired");
        amountOut = (amountIn * bid()) / 1e30;
        require(amountOut >= minAmountOut, "Slippage too high");

        TOKEN.safeTransferFrom(msg.sender, address(this), amountIn);
        uint256 usdt0Balance = USDT0.balanceOf(address(this));
        if (usdt0Balance < amountOut) {
            COMET.withdraw(address(USDT0), amountOut - usdt0Balance);
        }
        USDT0.safeTransfer(msg.sender, amountOut);
    }

    function depositOnCompound() public {
        uint256 usdt0Balance = USDT0.balanceOf(address(this));
        if (usdt0Balance > 0) {
            USDT0.approve(address(COMET), 0);
            USDT0.approve(address(COMET), usdt0Balance);
            COMET.supply(address(USDT0), usdt0Balance);
        }
    }

    // Owner-only withdrawals; contract liquidity is controlled by the owner.
    function withdraw(uint256 tokenAmount, uint256 usdt0Amount, uint256 cusdt0Amount) external onlyOwner {
        address to = owner();
        if (tokenAmount > 0) TOKEN.safeTransfer(to, tokenAmount);
        if (usdt0Amount > 0) USDT0.safeTransfer(to, usdt0Amount);
        if (cusdt0Amount > 0) CUSDT0.safeTransfer(to, cusdt0Amount);
    }
}
