// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

interface IFewFactory {
    function getWrappedToken(address originalToken) external view returns (address wrappedToken);

    function createToken(address originalToken) external returns (address wrappedToken);
}
