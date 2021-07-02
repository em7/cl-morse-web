(defsystem "cl-morse-web"
  :version "0.1.0"
  :author "em7"
  :license "BSD"
  :depends-on ("hunchentoot"
               "parenscript"
               "cl-who"
               "cl-morse")
  :components ((:module "src"
                :components
                ((:file "main")
                 (:file "templates"))))
  :description ""
  :in-order-to ((test-op (test-op "cl-morse-web/tests"))))

(defsystem "cl-morse-web/tests"
  :author "em7"
  :license "BSD"
  :depends-on ("cl-morse-web"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for cl-morse-web"
  :perform (test-op (op c) (symbol-call :rove :run c)))
