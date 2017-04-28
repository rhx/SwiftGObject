//
//  ParamSpec.swift
//  GtkListBoxDNDDemo
//
//  Created by Rene Hexel on 29/4/17.
//  Copyright © 2017 Rene Hexel.  All rights reserved.
//
import CGLib
import GLib

public extension ParamSpecRef {
    /// Create a parameter specification reference from a lookup table.
    ///
    /// - Parameters:
    ///   - name: property name to look up
    ///   - pool: lookup table to consult
    ///   - ownerType: type of the property owner (defaults to `.object`)
    ///   - walkAncestors: `false` to avoid checking ancestors (defaults to `true`)
    public init?<P: PropertyNameProtocol>(name: P, from pool: OpaquePointer!, ownerType: GType = .object, walkAncestors: Bool = true) {
        guard let p = g_param_spec_pool_lookup(pool, name.rawValue, ownerType, gboolean(walkAncestors ? 1 : 0)) else { return nil }
        self.init(p)
    }
}
