// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

interface IFewWrappedToken {
    function token() external view returns (address);

    function wrapTo(uint256 amount, address to) external returns (uint256);

    function unwrapTo(uint256 amount, address to) external returns (uint256);
}
