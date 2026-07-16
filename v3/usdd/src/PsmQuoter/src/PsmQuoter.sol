// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.6.12;

interface IUsddPsm {
    function tin() external view returns (uint256);
    function tout() external view returns (uint256);
    function gemJoin() external view returns (address);
}

interface IAuthGemJoin {
    function dec() external view returns (uint256);
}

/// @title PsmQuoter
/// @notice Read-only quoter for a specific UsddPsm
/// @dev Returns fee-adjusted exchange rates for 1 Gem or 1 USDD.
contract PsmQuoter {
    /// @notice Address of the PSM
    address public immutable psm;
    /// @notice gem decimals read from gemJoin
    uint256 public immutable gemDecimals;
    /// @notice Conversion factor 10^(18 - gemDecimals)
    uint256 public immutable to18ConversionFactor;

    constructor(address _psm) public {
        require(_psm != address(0), "invalid-psm");
        psm = _psm;

        address gemJoin__ = IUsddPsm(_psm).gemJoin();
        uint256 dec = IAuthGemJoin(gemJoin__).dec();
        gemDecimals = dec;
        to18ConversionFactor = 10 ** (18 - dec);
    }

    // --- Math ---
    uint256 constant WAD = 10 ** 18;

    function add(uint256 x, uint256 y) internal pure returns (uint256 z) {
        require((z = x + y) >= x, "PsmQuoter/add-overflow");
    }

    function sub(uint256 x, uint256 y) internal pure returns (uint256 z) {
        require((z = x - y) <= x, "PsmQuoter/sub-underflow");
    }

    function mul(uint256 x, uint256 y) internal pure returns (uint256 z) {
        require(y == 0 || (z = x * y) / y == x, "PsmQuoter/mul-overflow");
    }

    /// @notice USDD received for 1 Gem (after tin fee), in USDD native decimals.
    function quote1GemToUsdd() public view returns (uint256 usddOut) {
        uint256 tin = IUsddPsm(psm).tin(); // [wad]
        // 1 Gem (native) → gemAmt * (1 - tin)
        usddOut = sub(WAD, mul(WAD, tin) / WAD);
    }

    /// @notice Gem received (after tout fee) for 1 USDD, in Gem native decimals.
    function quote1UsddToGem() public view returns (uint256 gemOut) {
        uint256 tout = IUsddPsm(psm).tout(); // [wad]
        // For 1 USDD, gemAmt = 1 / (1 + tout);
        gemOut = mul(WAD, WAD) / add(WAD, tout) / to18ConversionFactor;
    }

    /// @notice Combined view for convenience
    /// @return usddPerGem  how many USDD for 1 Gem (18 decimals)
    /// @return gemPerUsdd  how many Gem for 1 USDD (Gem decimals)
    /// @return dec         Gem decimals
    /// @return tin         current tin
    /// @return tout        current tout
    function snapshot()
        public
        view
        returns (
            uint256 usddPerGem,
            uint256 gemPerUsdd,
            uint256 dec,
            uint256 tin,
            uint256 tout
        )
    {
        IUsddPsm P = IUsddPsm(psm);
        tin = P.tin();
        tout = P.tout();
        dec = gemDecimals;

        usddPerGem = quote1GemToUsdd(); // 18
        gemPerUsdd = quote1UsddToGem(); // native-dec
    }
}
