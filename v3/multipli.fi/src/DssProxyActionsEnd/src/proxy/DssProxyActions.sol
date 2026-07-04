// SPDX-License-Identifier: AGPL-3.0-or-later

/// DssProxyActions.sol

// Copyright (C) 2018-2020 Maker Ecosystem Growth Holdings, INC.

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

pragma solidity ^0.6.12;

interface GemLike {
    function approve(address, uint256) external;
    function transfer(address, uint256) external;
    function transferFrom(address, address, uint256) external;
    function deposit() external payable;
    function withdraw(uint256) external;
}

interface ManagerLike {
    function cdpCan(address, uint256, address) external view returns (uint256);
    function ilks(uint256) external view returns (bytes32);
    function owns(uint256) external view returns (address);
    function urns(uint256) external view returns (address);
    function vat() external view returns (address);
    function open(bytes32, address) external returns (uint256);
    function give(uint256, address) external;
    function cdpAllow(uint256, address, uint256) external;
    function urnAllow(address, uint256) external;
    function frob(uint256, int256, int256) external;
    function flux(uint256, address, uint256) external;
    function move(uint256, address, uint256) external;
    function exit(address, uint256, address, uint256) external;
    function quit(uint256, address) external;
    function enter(address, uint256) external;
    function shift(uint256, uint256) external;
}

interface VatLike {
    function can(address, address) external view returns (uint256);
    function ilks(bytes32) external view returns (uint256, uint256, uint256, uint256, uint256);
    function rwaUSD(address) external view returns (uint256);
    function urns(bytes32, address) external view returns (uint256, uint256);
    function frob(bytes32, address, address, address, int256, int256) external;
    function hope(address) external;
    function move(address, address, uint256) external;
    function gem(bytes32, address) external view returns (uint256);
}

interface GemJoinLike {
    function dec() external returns (uint256);
    function gem() external returns (GemLike);
    function join(address, uint256) external payable;
    function exit(address, uint256) external;
}

interface GNTJoinLike {
    function bags(address) external view returns (address);
    function make(address) external returns (address);
}

interface rwaUSDJoinLike {
    function vat() external returns (VatLike);
    function rwaUSD() external returns (GemLike);
    function join(address, uint256) external payable;
    function exit(address, uint256) external;
}

interface HopeLike {
    function hope(address) external;
    function nope(address) external;
}

interface EndLike {
    function fix(bytes32) external view returns (uint256);
    function cash(bytes32, uint256) external;
    function free(bytes32) external;
    function pack(uint256) external;
    function skim(bytes32, address) external;
}

interface JugLike {
    function drip(bytes32) external returns (uint256);
}

interface ProxyRegistryLike {
    function proxies(address) external view returns (address);
    function build(address) external returns (address);
}

interface ProxyLike {
    function owner() external view returns (address);
}

// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// WARNING: These functions meant to be used as a a library for a DSProxy. Some are unsafe if you call them directly.
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

contract Common {
    uint256 constant RAY = 10 ** 27;

    // Internal functions

    function mul(uint256 x, uint256 y) internal pure returns (uint256 z) {
        require(y == 0 || (z = x * y) / y == x, "mul-overflow");
    }

    // Public functions

    function rwaUSDJoin_join(address apt, address urn, uint256 wad) public {
        // Gets rwaUSD from the user's wallet
        rwaUSDJoinLike(apt).rwaUSD().transferFrom(msg.sender, address(this), wad);
        // Approves adapter to take the rwaUSD amount
        rwaUSDJoinLike(apt).rwaUSD().approve(apt, wad);
        // Joins rwaUSD into the vat
        rwaUSDJoinLike(apt).join(urn, wad);
    }
}

contract DssProxyActions is Common {
    // Internal functions

    function sub(uint256 x, uint256 y) internal pure returns (uint256 z) {
        require((z = x - y) <= x, "sub-overflow");
    }

    function toInt(uint256 x) internal pure returns (int256 y) {
        y = int256(x);
        require(y >= 0, "int-overflow");
    }

    function toRad(uint256 wad) internal pure returns (uint256 rad) {
        rad = mul(wad, 10 ** 27);
    }

    function convertTo18(address gemJoin, uint256 amt) internal returns (uint256 wad) {
        // For those collaterals that have less than 18 decimals precision we need to do the conversion before passing to frob function
        // Adapters will automatically handle the difference of precision
        require(GemJoinLike(gemJoin).dec() <= 18, "GemJoin decimals exceeds 18");
        wad = mul(amt, 10 ** (18 - GemJoinLike(gemJoin).dec()));
    }

    function _getDrawDart(address vat, address jug, address urn, bytes32 ilk, uint256 wad)
        internal
        returns (int256 dart)
    {
        // Updates stability fee rate
        uint256 rate = JugLike(jug).drip(ilk);

        // Gets rwaUSD balance of the urn in the vat
        uint256 rwaUSD = VatLike(vat).rwaUSD(urn);

        // If there was already enough rwaUSD in the vat balance, just exits it without adding more debt
        if (rwaUSD < mul(wad, RAY)) {
            // Calculates the needed dart so together with the existing rwaUSD in the vat is enough to exit wad amount of rwaUSD tokens
            dart = toInt(sub(mul(wad, RAY), rwaUSD) / rate);
            // This is neeeded due lack of precision. It might need to sum an extra dart wei (for the given rwaUSD wad amount)
            dart = mul(uint256(dart), rate) < mul(wad, RAY) ? dart + 1 : dart;
        }
    }

    function _getWipeDart(address vat, uint256 rwaUSD, address urn, bytes32 ilk) internal view returns (int256 dart) {
        // Gets actual rate from the vat
        (, uint256 rate,,,) = VatLike(vat).ilks(ilk);
        // Gets actual art value of the urn
        (, uint256 art) = VatLike(vat).urns(ilk, urn);

        // Uses the whole rwaUSD balance in the vat to reduce the debt
        dart = toInt(rwaUSD / rate);
        // Checks the calculated dart is not higher than urn.art (total debt), otherwise uses its value
        dart = uint256(dart) <= art ? -dart : -toInt(art);
    }

    function _getWipeWad(address vat, address usr, uint256 debt) internal view returns (uint256 wad) {
        // Gets actual rwaUSD amount in the urn
        uint256 rwaUSD = VatLike(vat).rwaUSD(usr);

        if (rwaUSD < debt) {
            uint256 rad = sub(debt, rwaUSD);
            wad = rad / RAY;
            wad = mul(wad, RAY) < rad ? wad + 1 : wad;
        }
    }

    function _getWipeAllWad(address vat, address usr, address urn, bytes32 ilk) internal view returns (uint256 wad) {
        // Gets actual rate from the vat
        (, uint256 rate,,,) = VatLike(vat).ilks(ilk);
        // Gets actual art value of the urn
        (, uint256 art) = VatLike(vat).urns(ilk, urn);
        // Gets actual rwaUSD amount in the urn
        uint256 rwaUSD = VatLike(vat).rwaUSD(usr);

        if (rwaUSD < mul(art, rate)) {
            uint256 rad = sub(mul(art, rate), rwaUSD);
            wad = rad / RAY;

            // If the rad precision has some dust, it will need to request for 1 extra wad wei
            wad = mul(wad, RAY) < rad ? wad + 1 : wad;
        }
    }

    // Public functions

    function transfer(address gem, address dst, uint256 amt) public {
        GemLike(gem).transfer(dst, amt);
    }

    function gemJoin_join(address apt, address urn, uint256 amt, bool transferFrom) public {
        // Only executes for tokens that have approval/transferFrom implementation
        if (transferFrom) {
            // Gets token from the user's wallet
            GemJoinLike(apt).gem().transferFrom(msg.sender, address(this), amt);
            // Approves adapter to take the token amount
            GemJoinLike(apt).gem().approve(apt, amt);
        }
        // Joins token collateral into the vat
        GemJoinLike(apt).join(urn, amt);
    }

    function hope(address obj, address usr) public {
        HopeLike(obj).hope(usr);
    }

    function nope(address obj, address usr) public {
        HopeLike(obj).nope(usr);
    }

    function open(address manager, bytes32 ilk, address usr) public returns (uint256 cdp) {
        cdp = ManagerLike(manager).open(ilk, usr);
    }

    function give(address manager, uint256 cdp, address usr) public {
        ManagerLike(manager).give(cdp, usr);
    }

    function giveToProxy(address proxyRegistry, address manager, uint256 cdp, address dst) public {
        // Gets actual proxy address
        address proxy = ProxyRegistryLike(proxyRegistry).proxies(dst);
        // Checks if the proxy address already existed and dst address is still the owner
        if (proxy == address(0) || ProxyLike(proxy).owner() != dst) {
            uint256 csize;
            assembly {
                csize := extcodesize(dst)
            }
            // We want to avoid creating a proxy for a contract address that might not be able to handle proxies, then losing the CDP
            require(csize == 0, "Dst-is-a-contract");
            // Creates the proxy for the dst address
            proxy = ProxyRegistryLike(proxyRegistry).build(dst);
        }
        // Transfers CDP to the dst proxy
        give(manager, cdp, proxy);
    }

    function cdpAllow(address manager, uint256 cdp, address usr, uint256 ok) public {
        ManagerLike(manager).cdpAllow(cdp, usr, ok);
    }

    function urnAllow(address manager, address usr, uint256 ok) public {
        ManagerLike(manager).urnAllow(usr, ok);
    }

    function flux(address manager, uint256 cdp, address dst, uint256 wad) public {
        ManagerLike(manager).flux(cdp, dst, wad);
    }

    function move(address manager, uint256 cdp, address dst, uint256 rad) public {
        ManagerLike(manager).move(cdp, dst, rad);
    }

    function frob(address manager, uint256 cdp, int256 dink, int256 dart) public {
        ManagerLike(manager).frob(cdp, dink, dart);
    }

    function quit(address manager, uint256 cdp, address dst) public {
        ManagerLike(manager).quit(cdp, dst);
    }

    function enter(address manager, address src, uint256 cdp) public {
        ManagerLike(manager).enter(src, cdp);
    }

    function shift(address manager, uint256 cdpSrc, uint256 cdpOrg) public {
        ManagerLike(manager).shift(cdpSrc, cdpOrg);
    }

    function makeGemBag(address gemJoin) public returns (address bag) {
        bag = GNTJoinLike(gemJoin).make(address(this));
    }

    function lockGem(address manager, address gemJoin, uint256 cdp, uint256 amt, bool transferFrom) public {
        bytes32 ilk = ManagerLike(manager).ilks(cdp);
        address urn = ManagerLike(manager).urns(cdp);
        address vat = ManagerLike(manager).vat();
        address own = ManagerLike(manager).owns(cdp); // ← get owner here

        uint256 wad = convertTo18(gemJoin, amt);
        uint256 gemBalance = VatLike(vat).gem(ilk, urn);

        if (own == address(this) || ManagerLike(manager).cdpCan(own, cdp, address(this)) == 1) {
            // CDP owner or allowed operator — use deficit approach
            if (gemBalance < wad) {
                uint256 deficit = wad - gemBalance;

                require(GemJoinLike(gemJoin).dec() <= 18, "GemJoin decimals exceeds 18");
                uint256 divisor = 10 ** (18 - GemJoinLike(gemJoin).dec());
                uint256 deficitAmt = deficit / divisor;
                deficitAmt = deficitAmt * divisor < deficit ? deficitAmt + 1 : deficitAmt;
                gemJoin_join(gemJoin, urn, deficitAmt, transferFrom);
            }
            frob(manager, cdp, toInt(wad), 0);
        } else {
            // Non-owner — permissionless top-up via proxy
            gemJoin_join(gemJoin, address(this), amt, transferFrom);
            VatLike(vat).frob(ilk, urn, address(this), address(this), toInt(wad), 0);
        }
    }

    function safeLockGem(address manager, address gemJoin, uint256 cdp, uint256 amt, bool transferFrom, address owner)
        public
    {
        require(ManagerLike(manager).owns(cdp) == owner, "owner-missmatch");
        lockGem(manager, gemJoin, cdp, amt, transferFrom);
    }

    function freeGem(address manager, address gemJoin, uint256 cdp, uint256 amt) public {
        uint256 wad = convertTo18(gemJoin, amt);
        // Unlocks token amount from the CDP
        frob(manager, cdp, -toInt(wad), 0);
        // Moves the amount from the CDP urn to proxy's address
        flux(manager, cdp, address(this), wad);
        // Exits token amount to the user's wallet as a token
        GemJoinLike(gemJoin).exit(msg.sender, amt);
    }

    function exitGem(address manager, address gemJoin, uint256 cdp, uint256 amt) public {
        // Moves the amount from the CDP urn to proxy's address
        flux(manager, cdp, address(this), convertTo18(gemJoin, amt));

        // Exits token amount to the user's wallet as a token
        GemJoinLike(gemJoin).exit(msg.sender, amt);
    }

    function draw(address manager, address jug, address rwaUSDJoin, uint256 cdp, uint256 wad) public {
        address urn = ManagerLike(manager).urns(cdp);
        address vat = ManagerLike(manager).vat();
        bytes32 ilk = ManagerLike(manager).ilks(cdp);
        // Generates debt in the CDP
        int256 dart = _getDrawDart(vat, jug, urn, ilk, wad);

        if (dart > 0) {
            frob(manager, cdp, 0, dart);
        }
        // Moves the rwaUSD amount (balance in the vat in rad) to proxy's address
        move(manager, cdp, address(this), toRad(wad));
        // Allows adapter to access to proxy's rwaUSD balance in the vat
        if (VatLike(vat).can(address(this), address(rwaUSDJoin)) == 0) {
            VatLike(vat).hope(rwaUSDJoin);
        }
        // Exits rwaUSD to the user's wallet as a token
        rwaUSDJoinLike(rwaUSDJoin).exit(msg.sender, wad);
    }

    function wipe(address manager, address rwaUSDJoin, uint256 cdp, uint256 wad) public {
        address vat = ManagerLike(manager).vat();
        address urn = ManagerLike(manager).urns(cdp);
        bytes32 ilk = ManagerLike(manager).ilks(cdp);

        address own = ManagerLike(manager).owns(cdp);
        if (own == address(this) || ManagerLike(manager).cdpCan(own, cdp, address(this)) == 1) {
            // Joins rwaUSD amount into the vat
            uint256 deficitAmt = _getWipeWad(vat, urn, wad * RAY);

            if (deficitAmt > 0) {
                rwaUSDJoin_join(rwaUSDJoin, urn, deficitAmt);
            }
            // Paybacks debt to the CDP
            frob(manager, cdp, 0, _getWipeDart(vat, wad * RAY, urn, ilk));
        } else {
            // Joins rwaUSD amount into the vat
            rwaUSDJoin_join(rwaUSDJoin, address(this), wad);
            // Paybacks debt to the CDP
            VatLike(vat).frob(ilk, urn, address(this), address(this), 0, _getWipeDart(vat, wad * RAY, urn, ilk));
        }
    }

    function safeWipe(address manager, address rwaUSDJoin, uint256 cdp, uint256 wad, address owner) public {
        require(ManagerLike(manager).owns(cdp) == owner, "owner-missmatch");
        wipe(manager, rwaUSDJoin, cdp, wad);
    }

    function wipeAll(address manager, address rwaUSDJoin, uint256 cdp) public {
        address vat = ManagerLike(manager).vat();
        address urn = ManagerLike(manager).urns(cdp);
        bytes32 ilk = ManagerLike(manager).ilks(cdp);
        (, uint256 art) = VatLike(vat).urns(ilk, urn);

        address own = ManagerLike(manager).owns(cdp);
        uint256 deficitAmt;
        if (own == address(this) || ManagerLike(manager).cdpCan(own, cdp, address(this)) == 1) {
            // Joins rwaUSD amount into the vat
            deficitAmt = _getWipeAllWad(vat, urn, urn, ilk);
            if (deficitAmt > 0) {
                rwaUSDJoin_join(rwaUSDJoin, urn, deficitAmt);
            }
            // Paybacks debt to the CDP
            frob(manager, cdp, 0, -int256(art));
        } else {
            // Joins rwaUSD amount into the vat
            deficitAmt = _getWipeAllWad(vat, address(this), urn, ilk);
            if (deficitAmt > 0) {
                rwaUSDJoin_join(rwaUSDJoin, address(this), deficitAmt);
            }
            // Paybacks debt to the CDP
            VatLike(vat).frob(ilk, urn, address(this), address(this), 0, -int256(art));
        }
    }

    function safeWipeAll(address manager, address rwaUSDJoin, uint256 cdp, address owner) public {
        require(ManagerLike(manager).owns(cdp) == owner, "owner-missmatch");
        wipeAll(manager, rwaUSDJoin, cdp);
    }

    function lockGemAndDraw(
        address manager,
        address jug,
        address gemJoin,
        address rwaUSDJoin,
        uint256 cdp,
        uint256 amtC,
        uint256 wadD,
        bool transferFrom
    ) public {
        address urn = ManagerLike(manager).urns(cdp);
        address vat = ManagerLike(manager).vat();
        bytes32 ilk = ManagerLike(manager).ilks(cdp);

        // Convert to 18 decimals
        uint256 wadC = convertTo18(gemJoin, amtC);
        uint256 gemBalance = VatLike(vat).gem(ilk, urn);

        // Only deposit the deficit (if any)
        if (gemBalance < wadC) {
            uint256 deficit = wadC - gemBalance;
            require(GemJoinLike(gemJoin).dec() <= 18, "GemJoin decimals exceeds 18");

            uint256 divisor = 10 ** (18 - GemJoinLike(gemJoin).dec());
            uint256 deficitAmt = deficit / divisor;
            deficitAmt = deficitAmt * divisor < deficit ? deficitAmt + 1 : deficitAmt;
            gemJoin_join(gemJoin, urn, deficitAmt, transferFrom);
        }

        // Calculate debt in a separate scope to free stack
        int256 dart = _getDrawDart(vat, jug, urn, ilk, wadD);

        // Locks token amount into the CDP and generates debt
        frob(manager, cdp, toInt(wadC), dart);
        // Moves the rwaUSD amount (balance in the vat in rad) to proxy's address
        move(manager, cdp, address(this), toRad(wadD));
        // Allows adapter to access to proxy's rwaUSD balance in the vat
        if (VatLike(vat).can(address(this), address(rwaUSDJoin)) == 0) {
            VatLike(vat).hope(rwaUSDJoin);
        }
        // Exits rwaUSD to the user's wallet as a token
        rwaUSDJoinLike(rwaUSDJoin).exit(msg.sender, wadD);
    }

    function openLockGemAndDraw(
        address manager,
        address jug,
        address gemJoin,
        address rwaUSDJoin,
        bytes32 ilk,
        uint256 amtC,
        uint256 wadD,
        bool transferFrom
    ) public returns (uint256 cdp) {
        cdp = open(manager, ilk, address(this));
        lockGemAndDraw(manager, jug, gemJoin, rwaUSDJoin, cdp, amtC, wadD, transferFrom);
    }

    function wipeAndFreeGem(
        address manager,
        address gemJoin,
        address rwaUSDJoin,
        uint256 cdp,
        uint256 amtC,
        uint256 wadD
    ) public {
        address vat = ManagerLike(manager).vat();
        address urn = ManagerLike(manager).urns(cdp);
        bytes32 ilk = ManagerLike(manager).ilks(cdp);

        uint256 deficitAmt = _getWipeWad(vat, urn, wadD * RAY);

        if (deficitAmt > 0) {
            // Only deposit deficit (if any), same pattern as wipe
            rwaUSDJoin_join(rwaUSDJoin, urn, deficitAmt);
        }

        uint256 wadC = convertTo18(gemJoin, amtC);
        // Paybacks exactly wadD of debt and unlocks token amount
        frob(
            manager,
            cdp,
            -toInt(wadC),
            _getWipeDart(vat, wadD * RAY, urn, ilk) // use wadD * RAY, not total balance
        );
        // Moves the amount from the CDP urn to proxy's address
        flux(manager, cdp, address(this), wadC);
        // Exits token amount to the user's wallet as a token
        GemJoinLike(gemJoin).exit(msg.sender, amtC);
    }

    function wipeAllAndFreeGem(address manager, address gemJoin, address rwaUSDJoin, uint256 cdp, uint256 amtC) public {
        address vat = ManagerLike(manager).vat();
        address urn = ManagerLike(manager).urns(cdp);
        bytes32 ilk = ManagerLike(manager).ilks(cdp);
        (, uint256 art) = VatLike(vat).urns(ilk, urn);

        // Joins rwaUSD amount into the vat
        uint256 deficitAmt = _getWipeAllWad(vat, urn, urn, ilk);
        if (deficitAmt > 0) {
            rwaUSDJoin_join(rwaUSDJoin, urn, deficitAmt);
        }
        uint256 wadC = convertTo18(gemJoin, amtC);
        // Paybacks debt to the CDP and unlocks token amount from it
        frob(manager, cdp, -toInt(wadC), -int256(art));
        // Moves the amount from the CDP urn to proxy's address
        flux(manager, cdp, address(this), wadC);
        // Exits token amount to the user's wallet as a token
        GemJoinLike(gemJoin).exit(msg.sender, amtC);
    }
}

contract DssProxyActionsEnd is Common {
    // Internal functions

    function _free(address manager, address end, uint256 cdp) internal returns (uint256 ink) {
        bytes32 ilk = ManagerLike(manager).ilks(cdp);
        address urn = ManagerLike(manager).urns(cdp);
        VatLike vat = VatLike(ManagerLike(manager).vat());
        uint256 art;
        (ink, art) = vat.urns(ilk, urn);

        // If CDP still has debt, it needs to be paid
        if (art > 0) {
            EndLike(end).skim(ilk, urn);
            (ink,) = vat.urns(ilk, urn);
        }
        // Approves the manager to transfer the position to proxy's address in the vat
        if (vat.can(address(this), address(manager)) == 0) {
            vat.hope(manager);
        }
        // Transfers position from CDP to the proxy address
        ManagerLike(manager).quit(cdp, address(this));
        // Frees the position and recovers the collateral in the vat registry
        EndLike(end).free(ilk);
    }

    function freeGem(address manager, address gemJoin, address end, uint256 cdp) public {
        require(GemJoinLike(gemJoin).dec() <= 18, "GemJoin decimals exceeds 18");
        uint256 amt = _free(manager, end, cdp) / 10 ** (18 - GemJoinLike(gemJoin).dec());
        // Exits token amount to the user's wallet as a token
        GemJoinLike(gemJoin).exit(msg.sender, amt);
    }

    function pack(address rwaUSDJoin, address end, uint256 wad) public {
        rwaUSDJoin_join(rwaUSDJoin, address(this), wad);
        VatLike vat = rwaUSDJoinLike(rwaUSDJoin).vat();
        // Approves the end to take out rwaUSD from the proxy's balance in the vat
        if (vat.can(address(this), address(end)) == 0) {
            vat.hope(end);
        }
        EndLike(end).pack(wad);
    }

    function cashGem(address gemJoin, address end, bytes32 ilk, uint256 wad) public {
        EndLike(end).cash(ilk, wad);
        // Exits token amount to the user's wallet as a token
        require(GemJoinLike(gemJoin).dec() <= 18, "GemJoin decimals exceeds 18");
        uint256 amt = mul(wad, EndLike(end).fix(ilk)) / RAY / 10 ** (18 - GemJoinLike(gemJoin).dec());
        GemJoinLike(gemJoin).exit(msg.sender, amt);
    }
}
