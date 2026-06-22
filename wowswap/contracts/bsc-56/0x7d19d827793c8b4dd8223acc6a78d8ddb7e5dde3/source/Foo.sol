// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.7.4;


contract Foo {
    uint256 internal m_bar;

    function setBar(uint256 bar) external {
        m_bar = bar;
    }

    function getBar() external view returns(uint256 bar) {
        return m_bar;
    }
}